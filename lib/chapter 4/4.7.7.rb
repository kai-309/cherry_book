def greeting(*names)
  p "#{names.join('と')},よろしくお願いします。"
end

hm = ['hikaru','mukku','riko']
greeting(hm)