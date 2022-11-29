-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c78e1f9c38b 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 65536 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

