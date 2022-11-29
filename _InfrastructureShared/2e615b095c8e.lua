-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2e615b095c8e 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Adware:Win32/GameVance.A") then
  return mp.INFECTED
end
return mp.CLEAN

