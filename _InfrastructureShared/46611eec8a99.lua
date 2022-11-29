-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/46611eec8a99 

-- params : ...
-- function num : 0
if peattributes.isexe == true and ((mp.getfilesize)() > 2304 or (mp.getfilesize)() < 4096) then
  return mp.INFECTED
end
return mp.CLEAN

