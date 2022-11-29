-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/afd767a592a1_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsTacticObservedGlobal("credentialdumping_concrete") then
  return mp.INFECTED
end
return mp.CLEAN

