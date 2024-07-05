local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 100 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = tostring
L1_1 = L1_1(mp.readfile(0, 100))
if string.find(L1_1, "\\rt[^f]") ~= nil or string.find(L1_1, "\\rtf[^1]") ~= nil or string.find(L1_1, "\\rtf1[^\\]") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
