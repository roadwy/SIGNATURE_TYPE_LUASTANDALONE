local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil or #L0_0 < 12 or string.lower(string.sub(L0_0, -12)) ~= "\\taskmgr.exe" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003.001", "credentialdumping_concrete", 86400)
return mp.INFECTED
