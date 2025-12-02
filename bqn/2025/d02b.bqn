line ← •FChars "d02.input"
s ← •Import "../bqn-libs/strings.bqn"

ranges ← ',' s.Split line

NbDigits ← 1⊸+·⌊10⊸⋆⁼
Divisors ← (1↓↕)⊸(⊣/˜0=|)

CutSame ← {
  nbDigits ← NbDigits 𝕩
  nbParts ← 𝕨 (⌊÷)˜ nbDigits
  stepSize ← 10⋆nbParts (⌈÷)˜ nbDigits
  DivNum ← {
    rem ← ⊑ 𝕩
    new_rem ← rem (⌊÷) stepSize
    new_mod ← rem |˜ stepSize
    new_rem∾new_mod∾(1↓𝕩)
  }
  divided ← DivNum⍟(nbParts - 1) ⋈𝕩

  (∧≡∨) divided
}

•Show 2 CutSame •Show 121212

IsFishy ← {
  sizesToCheck ← Divisors∘NbDigits 𝕩

  ∨´(𝕩 CutSame˜¨ sizesToCheck)
}

•Show IsFishy •Show 101010

CountFishy ← {
  lb‿hb ← (↕2)⊸+ •ParseFloat¨ '-'⊸s.Split 𝕩
  range ← lb + ↕ hb - lb
  +´ (IsFishy¨ range) / range
}

solution ← +´ CountFishy¨ ranges
•Show solution
# •Show CountFishy •Show "11-22"
# •Show CountFishy •Show "95-115"
# •Show CountFishy •Show "998-1012"
# •Show CountFishy •Show "1188511880-1188511890"
# •Show CountFishy •Show "222220-222224"
# •Show CountFishy •Show "1698522-1698528"
# •Show CountFishy •Show "446443-446449"
# •Show CountFishy •Show "38593856-38593862"
