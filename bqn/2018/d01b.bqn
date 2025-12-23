input ← •Flines "d01.input"
Parse ← •ParseFloat∘('+'⊸=∘⊑⊸↓)¨

Solution ← { ⊑(¬∊)⊸/ ∾⟜(+`⟜𝕩 ¯1⊸⊑)•_while_(∧´∘∊) ⟨0⟩ }

•Show Solution∘Parse input
