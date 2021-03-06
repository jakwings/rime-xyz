# Rime 個人輸入方案集。

已公佈：

*   泥巴拼音（muddy-pinyin）

    該方案借用「地球拼音」碼表。專爲查詞典而設計。

    可略聲母、韻母、音調。突出介音；區分 a/ê、e/ê、o/u、o/uo、u/ü。

    強制加入零聲母編碼：<kbd>"</kbd>

    特殊額外編碼："ea (ê)、cv (ch-)、sv (sh-)、zv (zh-)

    平上去入輕略：<kbd>-</kbd> <kbd>/</kbd> <kbd>\<</kbd> <kbd>\\</kbd> <kbd>\></kbd> <kbd>\*</kbd>

    例如，輸入 `hao<*hao<*i\`（hɑ̌o … hɑ̌o …ì）索得：

    *   好人好事（hɑ̌o rén hɑ̌o ŝì）
    *   好心好意（hɑ̌o xīn hɑ̌o yì）
    *   好聲好氣（hɑ̌o ŝēŋ hɑ̌o qì）

*   擴展拼音（pinyin-ext）

    Kuò’zhɑ̌n Pīn’yīn 的拼法爲 `Kuo\'zhan< Pin-'yin-`。按回車鍵上屏。

    平上去入：<kbd>-</kbd> <kbd>/</kbd> <kbd>\<</kbd> <kbd>\\</kbd>
    隔音符：<kbd>'</kbd> <kbd>"</kbd> 替補空格鍵：<kbd>\></kbd>

    還允許一些不標準的拼法。如 jüé (`jve/`)、duɑ̄nɡ (`duang-`)、yê̌ (`yea<`)。

*   平假名（hiragana）片假名（katakana）

    方便連續輸入日文的平仮名（ひらがな）和片仮名（カタカナ）。

*   特殊字符（symbols）

    用於擴展其它輸入方案的特殊字符輸入方案。鍵入 <kbd>?</kbd> 查看縮略碼表。

    內容包括：英文字母、計數字符、特殊符號、標點符號、漢語拼音、註音符號、漢字筆畫、偏旁部首、漢字結構、日文假名、希臘字母、俄語字母、希伯來文、拉丁字母、羅馬數字、計量單位、貨币單位、數學算符、分數符號、聲調調型、時間日期、易經八卦、太玄經爻、盲文點字、漢文批註、上標下標、星號標記、指向箭頭、製表符號、組合方塊、幾何圖形、電腦界面、信號標誌、人物表情、兩性關係、音樂樂譜、天氣狀況、黃道星宮、宇宙天體、煉金符號、遊戲紙牌、棋子骰子、國家地區、空白字符。

    不考慮加入更多 Emoji 圖像相關字符。（Unicode 標準製定者甚無聊）

    可參考 [example-symbols](others/example-symbols.schema.yaml) 方案瞭解如何套用該方案於其它輸入方案。

    相關字體：

    *   包羅萬象：[Symbola](https://dn-works.com/ufas/)
    *   拉丁字母：[Gentium Plus, Doulos SIL, Charis SIL](https://software.sil.org/lcgfonts/support/comparison/)
    *   Emoji：[EmojiOne Color](https://github.com/adobe-fonts/emojione-color/), [Source Emoji BnW](https://github.com/adobe-fonts/source-emoji/)

*   化學式（chemistry）

    方便輸入簡單的分子式、離子式。

    例如：Na⁺（`Na+`），SO₄²⁻（`SO4/2-`），CuSO₄·5H₂O（`CuSO4*\5H2O`），Ca(OH)₂（`Ca(OH)2`）。

以上方案均爲我的主要輸入方案中嵌套的方案，故其按鍵設計有些許怪異。若覺得修改不便可通過內附聯繫方式深入交流。
