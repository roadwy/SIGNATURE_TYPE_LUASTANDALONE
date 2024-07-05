local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("RPF:TopLevelFile")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L0_0 = L0_0("pea_isexe")
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.find(L0_0, "ObservationDetectors", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
