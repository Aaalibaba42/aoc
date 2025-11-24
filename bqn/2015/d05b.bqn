lines ← •FLines "d05.input"

# I could inline this, but realistically this is already tacit
Elements ← <˘2⊸↕
MatchMatrix ← ≡⌜˜
RemoveConsecutiveDuplicates ← ×⟜(≠⟜» ∨ =⟜«)
AtLeast2 ← 2⊸≤+˝
PairPair ← ∨´ (AtLeast2 ∘ RemoveConsecutiveDuplicates˘ MatchMatrix ∘ Elements)

# Dzaima's solution
# TODO: Understand how it works T_T
# PairPair ← {2≤⌈´ (↕∘≠-⊐˜) 2↕𝕩}

•Show "Pair Pairs:"
•Show PairPair •Show "xyxy"
•Show PairPair •Show "aoesaaaaonth"
•Show PairPair •Show "aabcdefgaa"
•Show PairPair •Show "aaa"
•Show PairPair •Show "efffe"
•Show PairPair •Show "abcdefg"

TripletRepeat ← ∨´((=´0‿2⊸⊏)˘ 3⊸↕)

•Show "TripletRepeat:"
•Show TripletRepeat •Show "xyxy"
•Show TripletRepeat •Show "aoesaaaaonth"
•Show TripletRepeat •Show "aabcdefgaa"
•Show TripletRepeat •Show "aaa"
•Show TripletRepeat •Show "efffe"
•Show TripletRepeat •Show "abcdefg"

•Show "Final Answer:"
•Show +´ (TripletRepeat ∧ PairPair)¨ lines
