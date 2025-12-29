lines ← •FLines "d01.input"

ParseNum ← •ParseFloat 1⊸↓
Rotate ← +⟜(ParseNum × ¯1⋆'R'=⊑)
ClicksFor ← 100|⊣+(×'M'-⊑∘⊢)×1+↕∘ParseNum
Solution ← +´∘=⟜0·∾´(100|¯1↓·Rotate`50⊸∾)⊸(ClicksFor¨)

•Show Solution lines
