local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[1].ppid
  TrackPidAndTechniqueBM(L0_0, "T1059.006", "Execution")
  TrackPidAndTechniqueBM(L0_0, "T1071.001", "CommandAndControl")
  return mp.INFECTED
end
return mp.CLEAN
