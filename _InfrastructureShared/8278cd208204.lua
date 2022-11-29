-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8278cd208204 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 230000 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN

