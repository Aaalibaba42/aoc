map ← >'@'= •FLines "d04.input"

Pad←((1+≢)⊸↑)⌾(⌽·⍉⌽)∘((1+≢)⊸↑)

Solution ← {
  Step ← {
    windowed ← 3‿3↕𝕩
    count ← (+´⥊)⎉2 windowed
    good ← (1‿1⊸⊑⎉2 windowed)∧(≤⟜4 count) 
  }

  IsStable ← ∧´∘⥊·¬Step
  Mutate ← (Pad·¬Step)⊸∧

  +´⥊ (Mutate)•_while_(¬IsStable)⊸(-˜) 𝕩
}

•Show Solution Pad map
