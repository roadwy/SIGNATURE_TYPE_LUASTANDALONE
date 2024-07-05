local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 9000 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L1_1 = L1_1(headerpage)
if nil == string.match(L1_1, "^{\\rtf1\\") then
  return mp.INFECTED
end
return mp.CLEAN
