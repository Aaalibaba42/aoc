s ← •Import "../bqn-libs/strings.bqn"
input ← •FChars "d01.input"

Parse ← ¯1⊸↓¨ ' '⊸s.Split

# N, E, S, W
dirs ← ⟨1‿0, 0‿1, ¯1‿0, 0‿¯1⟩
Directions ← ⊏⟜dirs 4|·+` 1-˜2× 'R'⊸=∘⊑¨
Distances ← (•ParseFloat 1⊸↓)¨

Solution ← Distances × Directions

•Show +´|+´ Solution∘Parse input
