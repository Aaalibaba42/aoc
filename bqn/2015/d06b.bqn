s ← •Import "../bqn-libs/strings.bqn"

lines ← •FLines "d06.input"

grid_size ← 1000
grid ← 0⥊˜⋈˜grid_size
verbs ← ⟨ 2⊸+ ⋄ 1⊸+ ⋄ 0⌈-⟜1 ⟩
verbWords ← ⟨ "toggle" ⋄ "on" ⋄ "off" ⟩

AtoB ← ⊣+↕∘(0⊸⌈-˜)
Selection ← AtoB´¨
Normalize ← ("turn"≡⊑)⊸↓' '⊸s.Split

# Needs to not be tacit for role change of 𝕨 -> 𝕎
ApplyToGrid ← {𝕎⌾((Selection 𝕩)⊸⊏)grid}
ParseVerb ← ⊑⟜verbs·verbWords⊸(<⁼∘⊐)⊏
ParseRange ← 1⊸+⌾(¯1⊸⊑)¨·<˘·⍉·>˘ 1‿3⊸(s.ToNums¨∘⊏)

Solution ← {
  grid ↩ (ParseVerb ApplyToGrid ParseRange)∘Normalize 𝕩
  @
}

Solution¨ lines
•Show +´⥊grid
