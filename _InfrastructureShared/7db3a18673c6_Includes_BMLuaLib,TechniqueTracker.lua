local L0_0
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].ppid
end
if L0_0 ~= nil and not isParentPackageManager(L0_0, true) then
  TrackPidAndTechniqueBM(L0_0, "T1546.004", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN
