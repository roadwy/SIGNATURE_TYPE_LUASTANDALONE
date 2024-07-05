local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(mp.getfilename(), -4)
L0_0 = L0_0(L1_1, L1_1(mp.getfilename(), -4))
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L1_1 = L1_1("pea_isexe")
if L1_1 and L0_0 == ".com" then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.getfilename())
  if string.find(L1_1, ".2017.com", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
