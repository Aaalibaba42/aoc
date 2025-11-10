Solution ← {
  Even_with_repeat_first ← (≠+1=2|≠)⊸⥊
  transform_and_add_init ← (⟨0‿0⟩∾⟨ 1‿0 ⋄ 0‿1 ⋄ ¯1‿0 ⋄ 0‿¯1 ⟩⊏˜"^>v<"⊸⊐) 𝕩
  even_transformed ← Even_with_repeat_first transform_and_add_init
  scanned ← +`⌾(∘‿2⊸⥊) even_transformed
  ≠⍷ scanned
}

•Show Solution ">"
•Show Solution "^>v<"
•Show Solution "^v^v^v^v^v"

•Show Solution •FChars "d03.input"
