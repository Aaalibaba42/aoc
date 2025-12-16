s ← •Import "../bqn-libs/strings.bqn"

lines ← •FLines "d06.input"

grid_size ← 1000
grid ← 0⥊˜⋈˜grid_size
verbs ← ⟨ ¬ ⋄ 1¨ ⋄ 0¨ ⟩

AtoB ← ⊣+↕∘(0⊸⌈-˜)
Selection ← AtoB´¨
Normalize ← ("turn"≡⊑)⊸↓ ' '⊸s.Split

ApplyToGrid ← {𝕎⌾((Selection 𝕩)⊸⊏) grid}
ParseVerb ← ⊑⟜verbs·⟨"toggle"⋄"on"⋄"off"⟩⊸(<⁼∘⊐)⊏
ParseRange ← 1⊸+⌾(¯1⊸⊑)¨·<˘·⍉·>˘ 1‿3⊸(s.ToNums¨∘⊏)

Solution ← {
  grid ↩ (ParseVerb ApplyToGrid ParseRange)∘Normalize 𝕩
  0
}

Solution¨ lines
•Show +´⥊grid
