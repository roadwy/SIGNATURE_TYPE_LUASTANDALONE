local L0_0, L1_1
L0_0 = pesecs
L0_0 = L0_0[4]
L0_0 = L0_0.Name
if L0_0 == ".)@s" then
  L0_0 = pesecs
  L0_0 = L0_0[5]
  L0_0 = L0_0.Name
  if L0_0 == ".Oha" then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
