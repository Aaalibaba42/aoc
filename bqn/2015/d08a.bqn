lines ← •FLines "d08.input"

R ← <`'\'⊸=
H ← 1⊸⌽'x'⊸=
Parse ← 1⊸↓¯1⊸↓
Solution ← 2+·+´R×1+·2⊸×H

•Show +´ Solution∘Parse¨ lines
