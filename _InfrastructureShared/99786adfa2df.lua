local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 == true then
  L0_0 = pehdr
  L0_0 = L0_0.Subsystem
  if L0_0 == 2 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
