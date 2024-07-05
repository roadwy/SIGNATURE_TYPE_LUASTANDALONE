if hstrlog[18].matched or hstrlog[19].matched then
  mp.changedetectionname(805306447)
elseif hstrlog[20].matched then
  mp.changedetectionname(805306448)
elseif hstrlog[14].matched or hstrlog[15].matched or hstrlog[16].matched or hstrlog[17].matched then
  mp.changedetectionname(805306432)
end
return mp.INFECTED
