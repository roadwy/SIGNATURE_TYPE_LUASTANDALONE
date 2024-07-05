local L0_0
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
if not L0_0 or string.find(L0_0, "Wow64", 13, true) then
  return mp.CLEAN
end
return mp.INFECTED
