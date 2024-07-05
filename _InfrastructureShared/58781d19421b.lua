local L1_0
L1_0 = 0
if hstrlog[1].matched then
  L1_0 = hstrlog[1].hitcount
end
if L1_0 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
