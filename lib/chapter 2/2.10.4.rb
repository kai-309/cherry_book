case 対象のオブジェクトや式
when 値1
  # 値1に一致する場合の処理
when 値2
  # (値1に一致せず)値2に一致する場合の処理
when 値3
  # (値1にも値2にも一致せず)値3に一致する場合の処理
else
  # どれにも一致しない場合の処理
end


country = 'itary'
# if文を使う場合
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'itary'
  'Ciao'
else
  '???'
end
# "Ciao"


# case文を使う場合
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'itary'
  'Ciao'
else
  '???'
end
# "Ciao"
  
  