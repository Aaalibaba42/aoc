s ← •Import "../bqn-libs/strings.bqn"

Solution ← (+´(2⊸×(2⊸↑∧)))+(×´)


•Show Solution 2‿3‿4
•Show Solution 1‿1‿10

•Show +´('x' (Solution (s.ToNums¨s.Split))¨ (1↓⌽(s.lf s.Split (•FChars "d02.input"))))
