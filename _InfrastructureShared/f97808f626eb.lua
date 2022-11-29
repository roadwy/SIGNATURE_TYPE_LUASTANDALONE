-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f97808f626eb 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (mp.getfilesize)() < 90000 then
  return mp.INFECTED
end
return mp.CLEAN

