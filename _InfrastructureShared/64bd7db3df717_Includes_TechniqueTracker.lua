-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/64bd7db3df717_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 ~= nil then
  TrackPidAndTechnique(l_0_0, "ttexclusion", "ttexclusion_cmdhstr")
end
return mp.CLEAN

