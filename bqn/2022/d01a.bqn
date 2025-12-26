s ← •Import "../bqn-libs/strings.bqn"

Parse ← •ParseFloat¨¨·s.lf⊸s.Split¨·(s.lf∾s.lf)⊸s.Split ¯1⊸↓∘•FChars
Solution ← +´·(↕3)⊸⊏·∨+´¨

•Show Solution∘Parse "d01.input"
