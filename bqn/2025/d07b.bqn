rawInput ← >•FLines "tst.input"
rayMap ← 'S'= rawInput
splitterMap ← '^'= rawInput

# Propagation must keep in mind the number of universes

# This one still works, if the cell contains 5 universes, next step will still
# be 5 universes
PropagateOnce ← ⌈⟜»˘⌾⍉

# This should be adding them
Split ← ⌈⟜(«˘+»˘)

Propagate ← {
  propagated ← PropagateOnce 𝕩
  splitPoints ← (splitterMap × propagated) × 𝕩

  # TODO: Make the xor not boolean but "arithmetic" to propagate and not lose nb
  splitPoints ≠ propagated Split splitPoints
}

# -2 because last line is computed at the last propagateOnce
•Show paths ← Propagate⍟(2-˜≠) rayMap

•Show splits ← splitterMap ∧ PropagateOnce paths
