local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.IOAVGetDownloadUrl())
if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 and L0_0 ~= nil and (string.find(L0_0, "docs.googleusercontent.com/docs", 1, true) or string.find(L0_0, "drive.google.com", 1, true)) and mp.getfilesize() <= 2097152 then
  return mp.INFECTED
end
return mp.CLEAN
