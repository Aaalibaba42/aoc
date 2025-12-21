lines ← •FLines "d08.input"

IsEscape ← '"'⊸=∨=⟜'\'
Solution ← 2++´∘IsEscape

•Show +´ Solution¨ lines

