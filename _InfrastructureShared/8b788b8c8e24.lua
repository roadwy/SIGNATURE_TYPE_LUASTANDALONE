-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8b788b8c8e24 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true and peattributes.isdll == true and (mp.getfilesize)() < 10000 then
  return mp.INFECTED
end
return mp.CLEAN

