if peattributes.isexe and peattributes.no_security and mp.getfilesize() >= 65535 and mp.getfilesize() <= 1048575 and (hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched) and (hstrlog[9].matched or hstrlog[10].matched or hstrlog[11].matched or hstrlog[12].matched or hstrlog[13].matched or hstrlog[14].matched or hstrlog[15].matched or hstrlog[16].matched) and (hstrlog[17].matched or hstrlog[18].matched) then
  return mp.INFECTED
end
return mp.CLEAN
