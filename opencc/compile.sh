#!/usr/bin/env bash

V_SCRIPT_PATH=$(dirname $0)
cd $V_SCRIPT_PATH

for input in *.txt
do
  output=${input%.txt}.ocd
  cut -d $'\t' -f1-2 $input | \
    opencc_dict -f text -t ocd -i /dev/stdin -o $output \
      && echo "DONE: $input to $output" \
      || echo "FAILED: $input to $output"
done
