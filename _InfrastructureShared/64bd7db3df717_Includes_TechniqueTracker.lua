local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 ~= nil then
  TrackPidAndTechnique(L0_0, "ttexclusion", "ttexclusion_cmdhstr")
end
return mp.CLEAN
