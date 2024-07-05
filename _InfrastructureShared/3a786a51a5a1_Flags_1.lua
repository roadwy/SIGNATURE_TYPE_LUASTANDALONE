local L0_0, L1_1
L0_0 = pesecs
L0_0 = L0_0[2]
L0_0 = L0_0.Name
if L0_0 == ".text1" then
  L0_0 = pesecs
  L0_0 = L0_0[5]
  L0_0 = L0_0.VirtualSize
  if L0_0 > 65536 then
    L0_0 = mp
    L0_0 = L0_0.SUSPICIOUS
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
