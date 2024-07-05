local L0_0, L1_1
L0_0 = pesecs
L0_0 = L0_0[7]
L0_0 = L0_0.Name
if L0_0 == ".KrmpSec" then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
