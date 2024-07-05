local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_HAS_MOTW_ADS)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.GetMOTWZone
  L0_0 = L0_0()
  if L0_0 == nil then
    return mp.CLEAN
  end
  mp.set_mpattribute("Lua:MotwZone_" .. L0_0)
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
