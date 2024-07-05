local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -12) == "\\msmpeng.exe" then
  return mp.CLEAN
elseif string.sub(L0_0, -10) == "\\mpcmd.exe" then
  return mp.CLEAN
elseif string.sub(L0_0, -13) == "\\mpcmdrun.exe" then
  return mp.CLEAN
elseif string.sub(L0_0, -12) == "\\svchost.exe" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1562.001", "mptamper_gp")
return mp.INFECTED
