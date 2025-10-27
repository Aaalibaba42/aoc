Solution ← {
  floor_changes ← ((-(')'⊸=))+('('⊸=)) 𝕩
  floors ← +´¨(1↓↑) floor_changes
  first_basement ← ¯1 ⊐˜ floors
  1 + first_basement
}

•Out "Tests:"
•Out "(()):"
•Show Solution "(())"
•Out "()():"
•Show Solution "()()"
•Out "(((:"
•Show Solution "((("
•Out "(()(()(:"
•Show Solution "(()(()("
•Out "))(((((:"
•Show Solution "))((((("
•Out "()):"
•Show Solution "())"
•Out "))(:"
•Show Solution "))("
•Out "))):"
•Show Solution ")))"
•Out ")())()):"
•Show Solution ")())())"


•Out ""
•Out "Personal input:"
•Show Solution •FChars "d01.input"


