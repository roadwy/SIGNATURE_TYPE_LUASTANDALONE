local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.utf8p2
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "Bytes:", 1, true)
if not L1_1 then
  return mp.CLEAN
end
if tonumber(L0_0:sub(L1_1):match("Bytes:(%d+)")) and tonumber(L0_0:sub(L1_1):match("Bytes:(%d+)")) > 35000000 and tonumber(L0_0:sub(L1_1):match("Bytes:(%d+)")) < 75000000 then
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
