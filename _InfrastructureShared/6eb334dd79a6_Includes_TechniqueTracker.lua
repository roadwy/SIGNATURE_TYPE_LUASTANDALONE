-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6eb334dd79a6_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1562.004", "disablefirewall")
  return mp.INFECTED
end
return mp.CLEAN

