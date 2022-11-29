-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6db34417c97f_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 == nil then
  return mp.CLEAN
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp2 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1021", "LateralMovement")
return mp.INFECTED

