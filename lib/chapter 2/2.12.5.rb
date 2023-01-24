# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
a.object_id   # 132280
b.object_id   # 147360

# cにbを代入する。bとcはどちらも同じオブジェクト
c = b
c.object_id   # 147360

# メソッドの引数にcを渡す。
# 引数として受け取ったdはb,cと同じオブジェクトを参照している
def m(d)
  d.object_id
end
m(c)          # 147360

# equal?メソッドを使って同じオブジェクトかどうか確認しても良い(trueなら同じオブジェクト)
a.equal?(b)   # false
b.equal?(c)   # true




# 同じオブジェクトを参照している場合、オブジェクトの状態が変更されると、
# その変更がそのまま各変数に影響する
# b, cは同じオブジェクト, aは異なるオブジェクト
a = 'hello'
b = 'hello'
c = b

# 渡された文字列を破壊的に大文字に変換するメソッドを定義する
def m!(d)
  d.upcase!
end

# cにm!メソッドを適用する
m!(c)

# b, cはいずれも大文字になる
b   # "HELLO"
c   # "HELLO"

# aは別のオブジェクトなので大文字にならない
a   # "hello"

