# Output the diamond shape for a given letter
# Rows ? Letter
LetterRange   ← |1 +@A⇡- @A
DiamondString ← |1 ⊂˜⊂⟜(⟜⇌ LetterRange)
DoubleString  ← |1 ⍉↯ ⊂ 2 ⊸⧻
DiamondPos    ← |1 ⍉⊟+(-1⊸⧻)×¯1.◿(↥1-1⊸⧻)+⇡+1×2.-@A
Diamond       ← |1 ⬚@ ≡(⬚@ ⌝⊏)⊃DiamondPos (DoubleString DiamondString)