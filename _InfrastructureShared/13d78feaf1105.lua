if peattributes.isexe and peattributes.no_security and mp.getfilesize() >= 65535 and mp.getfilesize() <= 1048575 and (hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched) and (hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched) and hstrlog[9].matched then
  return mp.INFECTED
end
return mp.CLEAN
