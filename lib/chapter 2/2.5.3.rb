n = 11
if n > 10
  puts "10より大きい"
else
  puts "10以下"
end
# "10より大きい"


country = "itary"
if country == "japan"
  puts "こんにちは"
elsif country == "us"
  puts "Hello"
elsif country == "itary"
  puts "Chao"
else
  puts "?????"
end
# "Chao"
# putsを使わずifの戻り値を見ることで、
# どの条件が実行されたか確認できる


country = "itary"
# if文の戻り値を変数に代入
greeting =
  if country == "japan"
    "こんにちは"
  elsif country == "us"
    "Hello"
  elsif country == "itary"
    "Chao"
  else
    "?????"
  end
  
greeting  # "Chao"

# else節がなく、かつどの条件にも満たない場合はnilが返る
# ※falseではない


point = 7
day = 1
# 1日であればポイント5倍
if day == 1
  point *= 5
end
# 35

# if文を修飾子として使う(以下)
point = 7
day = 1
# 1日であればポイント5倍(if修飾子を利用)
point *= 5 if day == 1
#35


