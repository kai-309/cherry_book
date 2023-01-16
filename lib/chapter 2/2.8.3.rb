puts "Line1,
Line2"
#これで改行も可能

a = <<TEXT
これはヒアドキュメントという使い方です。
TEXT
#長い文字列作成に使える

def some_method
  name = "Kai"
  <<~TEXT
    これはヒアドキュメントです。
    <<~を使うと内部文字列のインデントが無視される
  TEXT
end

puts some_method