# 様々なタイプのオブジェクトに対してto_sメソッドを呼び出すコード例

# 文字列
"1".to_s   # "1"             string to string

# 数値
1.to_s     # "1"             integer to string

# nil
nil.to_s   # "nill"          nill to string

# true
true.to_s  # "true"          true to string

# false
false.to_s # "false"         false to string

# 正規表現
/\d+/.to_s # "(?-mix:\\d+)"  正規表記 to string
