status = 'error'
if status != 'ok'
  '何か異常があります'
end
# "何か異常があります"


# 上記をunlessを使って書き換え
status = 'error'
unless status == 'ok'
  '何か異常があります'
end
# "何か異常があります"


# elseを使って条件が偽でなかった場合(真)の処理
status = 'ok'
unless status == 'ok'
  '何か異常があります'
else
  '正常です'
end
#　"正常です"


status = error
# unlessの結果を変数に代入する
message =
  unless status == 'ok'
    '何か異常があります'
  else
    '正常です'
  end
message   # "何か異常があります"

# unlessを修飾子として使う
'何か異常があります' unless status == 'ok'
# "何か異常があります"


status = 'error'
unless status == 'ok' then
  '何か異常があります'
end
# "何か異常があります"


# if + 否定条件は, unless + 肯定条件に書き直しができるが、
# 必ず書き直さなければならないわけではない。
# 読みやすいと思うものを採用する。

status = 'error'
# unlessを無理に使わなくても良い
if status != 'ok'
  '何か異常があります'
end
# "何か異常があります"
  


# == tureや == falseは冗長なので書かない

s = ' '
# (empty?は文字列が空白文字だった時にtrueを返し、それ以外はfalseを返すメソッド)
# NG例
it s.empty? == true
  '空白文字です'
end

# 修正
it s.empty?
  '空白文字です'
end


u = 123
# (zero?は数値が0だった時にtrueだった時にtrueを返し,それ以外はfalseを返すメソッド)
# NG例
if n. zero? == false
  'ゼロではありません'
end

# 修正(unless n.zeroでも可)
if !n.zero?
  'ゼロではありません'
end


user = nil
# NG例
if user == nil
  'nilです'
end

# 修正(unless userでも可)
if !user
  'nilです'
end

# またはnil？メソッドを使う
if user.nil?
  'nilです'
end


# trueもしくはfalseそのものを判定したいケース(非常に稀)
# == true や == faiseと書く必要がある

some_value = true
# 1や'ok'ではなく、trueであるかどうかの判定をしたい
if some_value == true
   'trueそのものです'
end


