if peattributes.ismsil and (hstrlog[1].matched or hstrlog[2].matched) and mp.getfilesize() > 20000 and mp.getfilesize() < 30000 then
  return mp.INFECTED
end
return mp.LOWFI
