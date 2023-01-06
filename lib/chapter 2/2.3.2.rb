# 同値は ==、異なる値は !=
'ruby' == 'ruby'   #true
'ruby' == 'Ruby'   #false
'ruby' != 'perl'   #true
'ruby' != 'ruby'   #false

# バイト値の大小比較
'a' < 'b'                    # true
'a' < 'A'                    # false
'a' > 'A'                    # true
'abc' < 'def'                # true
'abc' < 'ab'                 # false
'abc' < 'abcd'               # true
'あいうえお' < 'かきくけこ'  # true

# バイト値はbytesメソッドで確認できる
'a'.bytes  # [97]
'b'.bytes  # [98]
'A'.bytes  # [65]
'あ'.bytes # [227, 129, 130]