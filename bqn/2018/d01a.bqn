input ← •Flines "d01.input"
Parse ← (•ParseFloat ('+'=⊑)⊸↓)¨

•Show +´ Parse input
