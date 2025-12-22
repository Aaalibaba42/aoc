input ← •Flines "d01.input"
Parse ← •ParseFloat∘('+'⊸=∘⊑⊸↓)¨

FirstDup ← ⊑(¬∊)⊸/
NoDup ← ∧´∘∊

Solution ← {
  ch←Parse 𝕩
  FirstDup ∾⟜(+`⟜ch ¯1⊸⊑) •_while_ NoDup ⟨0⟩
}

•Show Solution input
