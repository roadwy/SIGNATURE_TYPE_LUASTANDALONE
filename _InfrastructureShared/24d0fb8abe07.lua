local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readheader
L1_1 = L1_1(0, 16)
if string.find(L1_1, "\000\001\000\000\000\255\255\255\255\001\000\000\000\000\000\000", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
