lines ← •FLines "d01.input"

Rotate ← {
  op ← ⊑ +‿- /˜ 'L'‿'R'⊸= ⊑ 𝕩
  𝕨 Op •ParseFloat 1↓𝕩
}

ClicksFor ← {
  100| 𝕨+(×'M'-⊑𝕩)× 1 + ↕•ParseFloat 1↓ 𝕩
}

Solution ← {
  run ← Rotate` 50⊸∾ 𝕩
  starts ← 100 | ¯1↓ run
  allPositions ← ∾´ starts ClicksFor¨ 𝕩
  +´ 0 = allPositions
}

•Show Solution lines
•Show Solution•_timed lines
