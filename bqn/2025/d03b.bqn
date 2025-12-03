lines ← •FLines "d03.input"

Solution ← {
  batteries ← 𝕩

  Step ← {
    l‿r‿v ← 𝕩
    w ← (r-l)↑ l↓ batteries
    mv  ← ⌈´ w
    di ← 1 + l + <⁼w ⊐ mv

    di‿(r+1)‿(mv+10×v)
  }

  ⊑⌽ Step⍟𝕨 0‿(𝕨-˜1⊸+·≠batteries)‿0
}

•Show +´ (12⊸Solution∘-⟜'0')¨ lines

