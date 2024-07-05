local L0_0
L0_0 = string
L0_0 = L0_0.len
L0_0 = L0_0(mp.getfilename())
if L0_0 == 15 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
