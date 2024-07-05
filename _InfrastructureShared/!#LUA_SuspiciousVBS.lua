local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 35000000 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.getfilename())
  if string.find(L1_1, "manqrets_%d%d%d%d%d%d") ~= nil or string.find(L1_1, "dkam_%d%d%d%d%d%d%d%d%d%d%d%d_%d%d%d%d2020") ~= nil or string.find(L1_1, "talq_%d%d%d%d+_%d%d%d%d2020") ~= nil or string.find(L1_1, "manquedb_%d%d%d%d%d%d") ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
