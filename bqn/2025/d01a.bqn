lines ← •FLines "d01.input"

ParseNum ← •ParseFloat 1⊸↓
Rotate ← +⟜(ParseNum × ¯1⋆'R'=⊑)

Solution ← +´0=100|·Rotate` 50⊸∾
•Show Solution lines
