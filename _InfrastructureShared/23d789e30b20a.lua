if hstrlog[13].matched or hstrlog[14].matched then
  mp.changedetectionname(805306447)
elseif hstrlog[15].matched then
  mp.changedetectionname(805306448)
elseif hstrlog[16].matched then
  mp.changedetectionname(805306449)
elseif hstrlog[9].matched or hstrlog[10].matched or hstrlog[11].matched or hstrlog[12].matched then
  mp.changedetectionname(805306432)
end
return mp.INFECTED
