lines ← •FLines "d05.input"

PairPair ← 2≤·⌈´·(↕∘≠-⊐˜)2⊸↕

•Show "Pair Pairs:"
•Show PairPair •Show "xyxy"
•Show PairPair •Show "aoesaaaaonth"
•Show PairPair •Show "aabcdefgaa"
•Show PairPair •Show "aaa"
•Show PairPair •Show "efffe"
•Show PairPair •Show "abcdefg"

TripletRepeat ← ∨´·0‿2⊸(=´∘⊏)˘3⊸↕

•Show "TripletRepeat:"
•Show TripletRepeat •Show "xyxy"
•Show TripletRepeat •Show "aoesaaaaonth"
•Show TripletRepeat •Show "aabcdefgaa"
•Show TripletRepeat •Show "aaa"
•Show TripletRepeat •Show "efffe"
•Show TripletRepeat •Show "abcdefg"

•Show "Final Answer:"
Solution ← TripletRepeat ∧ PairPair
•Show +´ Solution¨ lines
