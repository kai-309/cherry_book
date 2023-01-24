# !で終わるメソッドは、!が付いていないメソッドよりも危険
# !で終わるメソッドを使うときは注意が必要
a = 'ruby'
# upcaseだと変数aの値は変化しない
a.upcase   # "RUBY"
a          # "ruby"

# upcase!だと変数aの値も大文字に変わる
a.upcase!  # "RUBY"
a          # "RUBY"
# upcase!メソッドのように、呼び出したオブジェクトのことを
# 『破壊的なメソッド』という


# 引数の内容を変更しない安全バージョン
def reverse_upcase(s)
  s.reverse.upcase
end

#引数の内容を破壊的に変更してしまう危険バージョン
def reverse_upcase!(s)
  s.reverse!
  s.upcase!
  s
end

s = 'ruby'

# 安全バージョンは引数として渡した変数sの内容はそのまま
reverse_upcase(s)   # "YBUR"
s                   # "ruby"

# 危険バージョンは引数として渡した変数sの内容が変更される
reverse_upcase!(s)  # "YBUR"
s                   # "YBUR"


# メソッド名は!や?で終わることができる
# 変数名には!や?を使えない点に注意(構文エラーになる)
# ?で終わる変数名を定義しようとすると構文エラー
odd? = 1.odd?
# SyntaxError: (irb):16: syntax error, unexpected '='
# odd? = 1.odd?
#      ^

# !で終わる変数名を定義しようとすると構文エラー
upcase! = 'ruby'.upcase!
# SyntaxError: (irb):17: syntax error, unexpected '='
# upcase! = 'ruby'.upcase!
#         ^

