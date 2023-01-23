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
