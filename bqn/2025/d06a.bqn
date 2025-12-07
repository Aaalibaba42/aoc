s ← •Import "../bqn-libs/strings.bqn"

rawInput ← •FLines "d06.input"

ops  ← ×‿+ ⊏˜ '+'= (' '⊸≠)⊸/ ¯1⊑ rawInput
nums ← <˘⍉>s.ToNums¨ ¯1↓ rawInput

•Show ≢nums
•Show ≢ops
•Show +´ops {𝕎´𝕩}¨ nums

