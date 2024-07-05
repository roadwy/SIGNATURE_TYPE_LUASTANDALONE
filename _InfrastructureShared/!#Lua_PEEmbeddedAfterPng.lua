local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
if L0_0 < 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 1)
if L1_1 ~= 1196314761 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(256, 256)
if string.find(L1_1, "IEND", 1, true) ~= nil and string.find(L1_1, "MZ", 1, true) ~= nil and string.find(L1_1, "This program cannot be run in DOS mode", 1, true) ~= nil then
  mp.set_mpattribute("Lua:PEEmbeddedAfterPng")
end
return mp.CLEAN
