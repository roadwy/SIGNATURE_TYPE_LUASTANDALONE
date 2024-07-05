local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p2
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "Bytes:", 1, true)
if not L1_1 then
  return mp.CLEAN
end
if L0_0:sub(L1_1):match("Bytes:(%d+)") and #L0_0:sub(L1_1):match("Bytes:(%d+)") > 6 then
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
