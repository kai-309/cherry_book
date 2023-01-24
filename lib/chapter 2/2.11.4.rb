# 通常のメソッド定義
def greet
  'Hello'
end

# エンドレスメソッド定義 (=に続けて処理や戻り値を書く)
def greet = 'Hello!'

# 呼び出し方はどちらも同じ
greet   # "Hello"



# 通常のメソッド定義
def add(a, b)
  a + b
end

# エンドレスメソッド定義
def add(a, b) = a + b

add(1, 2)

# ただし、引数の()を省略すると構文エラー
def add a, b = a + b
# circular argument reference - b (SyntaxError)


