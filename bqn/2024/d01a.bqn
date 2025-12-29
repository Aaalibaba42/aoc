s ← •Import "../bqn-libs/strings.bqn"

Parse ← ⍉∘> s.ToNums¨∘•FLines
Solution ← |∘-˝∧˘

•Show +´ Solution∘Parse "d01.input"
