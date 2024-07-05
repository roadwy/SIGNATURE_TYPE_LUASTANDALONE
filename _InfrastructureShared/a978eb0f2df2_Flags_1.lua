local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.packed
if not L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 > 8 then
    L0_0 = pesecs
    L0_0 = L0_0[1]
    L0_0 = L0_0.Name
  end
elseif L0_0 == "" then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
