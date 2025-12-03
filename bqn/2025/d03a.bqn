lines ← •FLines "d03.input"

Solution ← {
  tenIndex ← (⊑·⍒¯1⊸↓) 𝕩

  tenDigit ← tenIndex ⊑ 𝕩
  unitDigit ← ⌈´ (1+tenIndex) ↓ 𝕩
  
  unitDigit + tenDigit × 10
}

•Show +´ (Solution∘-⟜'0')¨ lines
