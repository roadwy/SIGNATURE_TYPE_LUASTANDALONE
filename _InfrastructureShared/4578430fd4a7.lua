-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4578430fd4a7 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll == false and (mp.getfilesize)() < 1097730 then
  return mp.INFECTED
end
return mp.CLEAN

