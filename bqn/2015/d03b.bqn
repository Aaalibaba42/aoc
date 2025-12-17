dirs ← ⟨1‿0⋄0‿1⋄¯1‿0⋄0‿¯1⟩
Move ← ⊣⊏˜"^>v<"⊸⊐
MoveDir ← dirs⊸Move
Solution ← ≠∘⍷·⥊·+`·⌽‿2⊸⥊·⟨0‿0⟩⊸∾MoveDir

•Show Solution •FChars "d03.input"
