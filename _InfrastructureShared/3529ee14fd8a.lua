-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3529ee14fd8a 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("LUA:FileSizeLE100.A") then
  return mp.INFECTED
end
return mp.LOWFI

