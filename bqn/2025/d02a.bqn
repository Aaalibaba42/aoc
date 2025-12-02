line ← •FChars "d02.input"
s ← •Import "../bqn-libs/strings.bqn"

ranges ← ',' s.Split line

IsFishy ← {
  # MISREAD THE ASSIGNMENT, USELESS
  # Lengths to try
  # •Show ltt ← 1+↕⌊2÷˜ digits

  digits ← 1+10⋆⁼𝕩
  divide ← 2 (⌈÷)˜ digits
  p1 ← (10 ⋆ divide) (⌊÷)˜ 10 × 𝕩
  p2 ← (10 ⋆ (divide - 1)) | 𝕩
  # •Show ⟨ 𝕩 ⋄ p1‿p2 ⋄ p1 = p2 ⟩
  p1 = p2
}

CountFishy ← {
  lb‿hb ← (↕2)⊸+ •ParseFloat¨ '-'⊸s.Split 𝕩
  range ← lb + ↕ hb - lb
  +´ (IsFishy⊸/) range
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
