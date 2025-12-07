s ← •Import "../bqn-libs/strings.bqn"

rawInput ← •FLines "d06.input"

ops  ← ×‿+ ⊏˜ '+'= (' '⊸≠)⊸/ ¯1⊑ rawInput

groups ← +` ' '≠ ¯1⊑ rawInput
nums ← ¯1↓ rawInput
groupped ← >(1↓groups⊸⊔)¨ nums 
trimmed ← (¯1⊸↓¨)⌾(¯1⊸↓˘) groupped
longest ← ⌈´⥊≠¨ trimmed
uniform ← longest↑¨trimmed
verticalNums ← s.Trim¨¨ <˘¨<˘ ⍉˘>⍉uniform
normalizedVerticalNums ← (0⊸≠≠¨)⊸/¨ verticalNums


•Show normalizedVerticalNums
•Show ops
# •Show +´ops {𝕎´𝕩}¨ verticalNums

