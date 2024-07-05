local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.x86_image
if L0_0 then
  L0_0 = pesecs
  L1_1 = pehdr
  L1_1 = L1_1.NumberOfSections
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Name
  if L0_0 == "Zero" then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
