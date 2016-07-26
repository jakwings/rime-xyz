#!/usr/bin/env bash

set -e

export LC_ALL=C

compile() {
  input=$1
  output=$2
  cut -d $'\t' -f1-2 $input | \
    opencc_dict -f text -t ocd -i /dev/stdin -o $output
}

V_SCRIPT_PATH=$(dirname $0)
cd $V_SCRIPT_PATH

for src in *.txt
do
  cp $src ${src%.txt}.tsv
done

>> t2s-char.tsv awk '
  BEGIN { FS=OFS="\t" }
  FNR == 1 { mode = !mode }
  mode { data[$1] = $2 }
  !mode { print $1, dedup(simplify($2) " " $2 " " $1) }

  function simplify(chars, a,n,s,sep) {
    n = split(chars, a, " ")
    for (i = 1; i <= n; i++) {
      if (data[a[i]]) s = s sep data[a[i]]
      if (i == 1) sep = " "
    }
    return s
  }

  function dedup(chars, a,n,t,s,sep) {
    n = split(chars, a, " ")
    for (i = 1; i <= n; i++) {
      if (!t[a[i]]) {
        s = s sep a[i]
        t[a[i]] = 1
      }
      if (i == 1) sep = " "
    }
    return s
  }
' <(cut -d $'\t' -f1-2 t2s-char.txt) <(cut -d $'\t' -f1-2 v2s-char.txt)

for input in *.tsv
do
  output=${input%.tsv}.ocd
  compile $input $output \
    && echo "DONE: $input to $output" \
    || echo "FAILED: $input to $output"
  rm $input
done
