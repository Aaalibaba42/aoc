input ← •FChars "d10.input"

Bin ← (¯1⊸+·+`»⊸≠)⊸⊔
CountBin ← ('0'+≠)∾⊑
Solution ← ∾CountBin¨∘Bin

•Show ≠ Solution⍟50 input
