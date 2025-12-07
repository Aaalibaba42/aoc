s ← •Import "../bqn-libs/strings.bqn"

rawInput ← •FLines "d06.input"

ops  ← ×‿+ ⊏˜ '+'= (' '⊸≠)⊸/ ¯1⊑ rawInput
groups ← +` ' '≠ ¯1⊑ rawInput
nums ← ¯1↓ rawInput
# verticalNums ← (•ParseFloat s.Trim)¨¨ <˘¨<˘ ⍉˘>⍉(¯1⊸↓¨)⌾(¯1⊸↓˘) >(1↓groups⊸⊔)¨ nums
verticalNums ← (•ParseFloat s.Trim)¨¨ <˘¨⍉¨>¨<˘⍉(¯1⊸↓¨)⌾(¯1⊸↓˘) >(1↓groups⊸⊔)¨ nums

•Show +´ops {𝕎´𝕩}¨ verticalNums


