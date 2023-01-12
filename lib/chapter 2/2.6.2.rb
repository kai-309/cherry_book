# 引数がなければ( )をつけない方が主流
def greet
  "こんにちは"
end

# ( )をつけても良いが、省略が大半
def greet()
  "こんにちは"
end

# 引数がある場合でも、( )は省略することができるが、つけることが大半
# 今回は( )は省略
def greet country
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end
