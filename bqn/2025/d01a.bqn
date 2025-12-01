lines ← •FLines "d01.input"

Rotate ← {
   op ← ⊑ -‿+ /˜ 'L'‿'R'⊸= ⊑ 𝕩
   𝕨 Op •ParseFloat 1↓𝕩
}

# •Show 50 Rotate •Show "R50"
# •Show 50 Rotate •Show "L50"

Solution ← +´0=100|·Rotate` 50⊸∾
•Show Solution lines
•Show Solution•_timed lines
