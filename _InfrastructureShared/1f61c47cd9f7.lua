-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1f61c47cd9f7 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:FindPamesegWindow") then
  return mp.INFECTED
end
return mp.CLEAN

