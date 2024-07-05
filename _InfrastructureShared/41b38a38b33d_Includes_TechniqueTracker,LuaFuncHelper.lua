local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[1].ppid
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if L0_0 == nil or L1_1 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L0_0, true) then
  TrackPidAndTechniqueBM(L1_1, "T1021.002", "remoteservice-target")
  return mp.INFECTED
end
return mp.CLEAN
