map ← >'@'= •FLines "d04.input"

Pad←((1+≢)⊸↑)⌾(⌽·⍉⌽)∘((1+≢)⊸↑)

Solution ← {
  windowed ← 3‿3↕𝕩
  count ← (+´⥊)⎉2 windowed
  good ← (1‿1⊸⊑⎉2 windowed)∧(≤⟜4 count) 
  +´⥊good
}

•Show Solution Pad map
