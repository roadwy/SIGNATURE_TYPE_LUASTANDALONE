-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6ed709175727_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
TrackPidAndTechnique(l_0_0, "T1562.001", "mptamper_avastdriver")
return mp.INFECTED

