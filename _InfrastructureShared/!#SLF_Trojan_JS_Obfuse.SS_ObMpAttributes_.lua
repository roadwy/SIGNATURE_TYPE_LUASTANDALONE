local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_HAS_MOTW_ADS)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetMOTWZone
L0_0 = L0_0()
if L0_0 < 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetMOTWHostUrl
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, ".sbs/lander/", 1, true) and string.find(L0_0, "download.php", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
