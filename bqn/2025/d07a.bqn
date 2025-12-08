rawInput ← >•FLines "d07.input"
rayMap ← 'S'= rawInput
splitterMap ← '^'= rawInput

PropagateOnce ← ∨⟜»˘⌾⍉
Split ← ∨⟜(«˘∨»˘)
Propagate ← {
  propagated ← PropagateOnce 𝕩
  splitPoints ← (splitterMap ∧ propagated)

  splitPoints ≠ propagated Split splitPoints
}

# -2 because last line is computed at the last propagateOnce
paths ← Propagate⍟(2-˜≠) rayMap

•Show +´ ⥊ splitterMap ∧ PropagateOnce paths
