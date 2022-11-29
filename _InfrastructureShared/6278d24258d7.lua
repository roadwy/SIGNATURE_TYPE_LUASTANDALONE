-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6278d24258d7 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.getfilesize)() < 5000 then
  return mp.INFECTED
end
return mp.CLEAN

