def greet(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# 引数が少ない
greet
# ArgumentError: wrong number of arguments (0 for 1)

# 引数がちょうど
greet('us')
# "hello"

# 引数が多い
greet('us', 'japan')
# ArgumentError: wrong number of arguments (2 for 1)



# 上記のgreetメソッドにデフォルト値を設定
# 引数なしで呼び出した場合でもエラーにならない
# 引数なしの場合にはcountryに'japan'を設定する
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greet        # "こんにちは"
greet('us')  # "hello"



# デフォルト値付きの引数を使う場合は、デフォルト値あるなしの引数を混在可
def defalt_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
defalt_args(1, 2)         # "a=1, b=2, c=0, d=0"
defalt_args(1, 2, 3)      # "a=1, b=2, c=3, d=0"
defalt_args(1, 2, 3, 4)   # "a=1, b=2, c=3, d=4"



# システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'Bar'
end

foo   # time: 2023-01-24 07:48:19 +0000, message: Bar



# yが指定されなければxの値をyに設定する
def point(x, y = x)
  puts "x=#{x}, y=#{y}"
end

point(3)       # x=3, y=3
point(3, 10)   # x=3, y=10