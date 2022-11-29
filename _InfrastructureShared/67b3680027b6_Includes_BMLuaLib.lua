-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67b3680027b6_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.CLEAN
end
return mp.INFECTED

