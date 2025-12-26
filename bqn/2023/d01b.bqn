names ← ⟨"zero"⋄"one"⋄"two"⋄"three"⋄"four"⋄"five"⋄"six"⋄"seven"⋄"eight"⋄"nine"⟩

WordPos ← /¨names⊸(⍷¨)∘<
DigitPos ← /¨('0'+↕10)⊸(=¨)∘<
Positions ← WordPos ∾¨ DigitPos

FirstLast ← (⌊´⋈⌈´)∘∾
WhichDigit ← ⊑∘/∘(∨´¨)
Extract ← '0'+·WhichDigit¨ FirstLast⊸(=⟜<)

ProcessLine ← Extract∘Positions

Solution ← +´·•ParseFloat¨ ProcessLine¨∘•FLines
•Show Solution "d01.input"
