local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 8192 or L0_0 > 13631488 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(4096, 4096)
if mp.readu_u32(L1_1, 1) ~= 1852400232 then
  return mp.CLEAN
end
if mp.readu_u32(L1_1, 113) ~= 1414483794 then
  return mp.CLEAN
end
if string.find(L1_1, "\000SAM\000", 1, true) then
  mp.set_mpattribute("BM_REGHIVE_SAM")
  return mp.INFECTED
end
if string.find(L1_1, "\000Cache\000", 1, true) then
  mp.set_mpattribute("BM_REGHIVE_SECURITY")
  return mp.INFECTED
end
if string.find(L1_1, "ActivationBroker", 1, true) then
  mp.set_mpattribute("BM_REGHIVE_SYSTEM")
  return mp.INFECTED
end
return mp.CLEAN
