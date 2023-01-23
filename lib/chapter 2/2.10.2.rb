t1 = true
f1 = false
t1 and f1   # false
t1 or f1    # true
not t1      # false


# and, or, notは演算子の優先度が低い
# and or < not < || <  && < !


t1 = true
f1 = false
!f1 || t1      # true
not f1 || t1   # false
# !は||よりも優先度が高い
!(f1) || t1
# notは||よりも優先度が低い
not(f1 || t1)


t1 = true
t2 = true
f1 = false
t1 || t2 && f1   # true
t1 or t2 and f1  # false
# &&は||よりも優先度が高い
t1 || (t2 && f1)
# andとorの優先度は同じなので、左から順に評価
(t1 or t2) and f1

# andとorは条件分岐で使うのではなく、制御フローを扱うのに向いている
# 制御フロー⋅⋅⋅オーバーフローしないように制御する機能、送るデータの量を調整


def greet(country)
  # countryがnil(またはfalse)ならメッツセージを返してメソッドを抜ける
  country or return 'countryを入力してください'
  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end
greet(nil)      # "countryを入力してください"
greet('japan')  # "こんにちは"
greet('us')     # "Hello"
