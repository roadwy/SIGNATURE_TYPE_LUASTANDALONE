if peattributes.no_security == true and mp.getfilesize() >= 1024 and mp.getfilesize() <= 10240 and peattributes.isdll and (hstrlog[1].matched and hstrlog[3].matched and hstrlog[4].matched and hstrlog[2].matched or hstrlog[1].matched and hstrlog[5].matched and hstrlog[6].matched and hstrlog[2].matched) then
  return mp.INFECTED
end
return mp.CLEAN
