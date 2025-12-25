Parse ← •ParseFloat¨•FLines
ToWindows ← +´˘3⊸↕
NbIncrease ← +´·<´˘2⊸↕
•Show NbIncrease∘ToWindows∘Parse "d01.input"
