-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7878317f47a1 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.isdll == false and (mp.getfilesize)() < 5048000 then
  return mp.INFECTED
end
return mp.CLEAN

