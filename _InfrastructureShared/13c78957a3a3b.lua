if (hstrlog[1].matched or hstrlog[2].matched) and (hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched) and (mp.getfilesize() >= 1500000 and mp.getfilesize() <= 2000000 and pesecs[1].Name == "UPX0" or mp.getfilesize() >= 3300000 and mp.getfilesize() <= 4000000) then
  return mp.INFECTED
end
return mp.CLEAN
