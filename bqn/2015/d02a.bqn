s ← •Import "../bqn-libs/strings.bqn"

Solution ← ⌊´⊸+⟜(+´2⊸×)1⊸⌽⊸×
Parse ← •ParseFloat¨¨·'x'⊸s.Split¨•FLines

•Show +´ Solution¨ Parse "d02.input"
