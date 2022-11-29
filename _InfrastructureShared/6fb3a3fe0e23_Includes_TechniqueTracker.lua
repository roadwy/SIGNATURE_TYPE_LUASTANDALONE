-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6fb3a3fe0e23_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1018", "Discovery")
return mp.INFECTED

