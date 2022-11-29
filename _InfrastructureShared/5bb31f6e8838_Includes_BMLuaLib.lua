-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5bb31f6e8838_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if analyzeRansomNotePattern(0) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

