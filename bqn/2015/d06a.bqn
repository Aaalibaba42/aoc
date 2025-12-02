s ← •Import "../bqn-libs/strings.bqn"
lines ← •FLines "d06.input"

grid_size ← 10
grid ← 0⥊˜⋈˜grid_size

verbs ← ¬‿1‿0
AtoB ← ⊣+↕∘-˜
Selection ← AtoB´¨

# •Show grid
# •Show ¬⌾((Selection ⟨ 1‿5 ⋄ 2‿5 ⟩)⊸⊏) grid

_Application ← {
  𝔽⌾((Selection 𝕩)⊸⊏)
}

•Show (¬_Application⟜⟨ 1‿5 ⋄ 2‿5 ⟩) grid

ParseLine ← {
  words ← ' ' s.Split 𝕩
  verb_word ← "on"
  verb ← ("toggle"‿"on"‿"off" ≡ verb_word) / verbs

  verb Application grid
}

# •Show ParseLine "turn "
