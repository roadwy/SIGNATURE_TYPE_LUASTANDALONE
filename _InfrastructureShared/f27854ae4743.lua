local L0_0
L0_0 = 0
if hstrlog[9].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[10].matched then
  L0_0 = L0_0 + 1
end
if hstrlog[11].matched then
  L0_0 = L0_0 + 1
end
if mp.HSTR_WEIGHT >= 100 and L0_0 >= 2 then
  return mp.INFECTED
end
if L0_0 >= 3 and hstrlog[12].matched then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
return mp.CLEAN
