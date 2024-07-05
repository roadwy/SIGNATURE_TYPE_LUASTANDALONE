local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == 47104 or L0_0 == 47574 or L0_0 == 48128 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.getfilename())
  if string.find(L1_1, "%-%>%(ole stream") ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
