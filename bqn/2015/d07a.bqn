s ← •Import "../bqn-libs/strings.bqn"

lines ← •FLines "d07.input"

# Binary Logic
And ← 16•bit._and○⥊
Or ← 16•bit._or○⥊
Not ← 16•bit._not⥊
mod ← 2⋆16
LShift ← mod⊸|⊣×2⊸⋆
RShift ← ⌊⊣÷2⊸⋆

# Helper functions/modifiers
IsNum ← ∧´('0'⊸≤∧≤⟜'9')
_dispatch_ ← {𝕗⊸⊑⟜𝕘 {𝕎𝕩} ⊢}
_apply ← {F _𝕣 w‿x: w F x}

# Constants
opNames ← "AND"‿"OR"‿"LSHIFT"‿"RSHIFT"
opFuncs ← ⟨And, Or, LShift, RShift⟩
OpLookup ← (⊑opNames⊸⊐∘<)⊸⊑⟜opFuncs

# Solution
Solution ← {
  # Computed Wire Values
  wires ← ⟨⟩ •HashMap ⟨⟩

  _exprRef ← {𝔽 ⊑𝕩}
  _exprNot ← {Not 𝔽 1⊑𝕩}
  _exprBinOp ← {(OpLookup 1⊑𝕩)_apply (𝔽 ⊑𝕩)‿(𝔽 2⊑𝕩)}

  instructions ← (¯1⊸⊑¨ •HashMap ¯2⊸↓¨) ' '⊸s.Split¨ lines
  Signal ← {
    exprHandlers ← ⟨ 𝕊 _exprRef ⋄ 𝕊 _exprNot ⋄ 𝕊 _exprBinOp ⟩
    RunExpr ← (-⟜1∘≠) _dispatch_ exprHandlers
    ComputeWire ← {
      val ← RunExpr instructions.Get 𝕩
      𝕩 wires.Set val
      val
    }
    signalConds ← ⟨ IsNum ⋄ wires.Has ⋄ 1˙ ⟩
    signalActions ← ⟨ •ParseFloat ⋄ wires.Get ⋄ ComputeWire ⟩
    ((⊑⊐⟜1∘{signalConds{𝕎𝕩}¨<𝕩}) _dispatch_ signalActions) 𝕩
  }

  ⊑Signal 𝕩
}

•Show Solution "a"
