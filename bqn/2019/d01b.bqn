Parse ← •ParseFloat¨ •FLines

Step ← -⟜2⌊∘÷⟜3
Solution ← +´1↓(∾⟜(Step ¯1⊸⊑))•_while_(8<¯1⊸⊑)∘⋈
•Show +´ Solution¨ Parse "d01.input"


