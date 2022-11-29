-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1783fe5f06c 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and (mp.getfilesize)() == 73728 then
  return mp.INFECTED
end
return mp.CLEAN

