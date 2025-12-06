s ← •Import "../bqn-libs/strings.bqn"

ranges‿products ← (+` (⟨⟩⊸≡)¨)⊸⊔ •FLines "d05.input"
products (•ParseFloat¨ 1⊸↓) ↩
ranges (•ParseFloat¨ '-'⊸s.Split)¨ ↩

# TODO: reduce ranges to minimal representation (interval map):
#   (⟨1-5 3-10 15-20⟩ -> ⟨1-10 15-20⟩)

IsInRange ← {
  lo‿hi ← 𝕩
  (hi⊸≥∧≥⟜lo) 𝕨
}

•Show +´ (∨˝)⎉2 >(products⊸IsInRange)¨ ranges
