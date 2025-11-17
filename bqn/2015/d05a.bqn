lines ← •FLines "d05.input"

EnoughVowels ← 2<·+´(<⁼∊⟜"aeiou")¨
DuplicateLetter ← ∨´·=´˘2⊸↕
UnauthorizedCombos ← ∧´ [ "ab" ⋄ "cd" ⋄ "pq" ⋄ "xy" ] ¬∘∊ 2⊸↕

•Show EnoughVowels "aei"
•Show EnoughVowels "xazegov"
•Show EnoughVowels "aeiouaeiouaeiou"
•Show EnoughVowels "nope"
•Show DuplicateLetter "noabteuhsthoaeisschaoesuth"
•Show UnauthorizedCombos "noateuhsthoabeisschaoesuth"

Solution ← DuplicateLetter ∧ EnoughVowels ∧ UnauthorizedCombos

•Show Solution "ugknbfddgicrmopn"
•Show Solution "aaa"
•Show Solution "jchzalrnumimnmhp"
•Show Solution "haegwjzuvuyypxyu"
•Show Solution "dvszwmarrgswjxmb"

•Show +´ Solution¨ lines
