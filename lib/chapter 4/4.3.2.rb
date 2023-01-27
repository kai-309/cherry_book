# Rubyの繰り返し処理
# 変数sumに配列の各要素nを加算するコード
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

# eachメソッドの役割は配列の要素を最初から最後まで順番に取り出すこと
# その要素をどう扱うかはブロックに記述 (doからendまでが範囲)
