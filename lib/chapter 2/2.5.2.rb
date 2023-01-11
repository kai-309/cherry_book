t1 = true
t2 = true
f1 = false
f2 = false

&&         # かつ
t1 && t2   # どちらもtrueならtrue = true
ti && f1   # 上記同条件           = false

||         # または
t1 || t2   # どちらかがtrueならtrue = true
f1 || f2   # 上記同条件             = false
t1 || f1   # 上記同条件             = true

t1 && t2 || f1 && f2    # true
                        # &&は||よりも優先度が高いため、以下のように解釈される
                        # (t1 && t2) || (f1 && f2)
                        # 優先順位を変えるには( )を使えば良い



# !演算子を使うと真偽値の反転ができる
 t1 = true
 f1 = false
!t1 # false
!f1 # true
