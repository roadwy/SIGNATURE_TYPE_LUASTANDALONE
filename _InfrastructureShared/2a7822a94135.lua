-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a7822a94135 

-- params : ...
-- function num : 0
if peattributes.isdll == false and peattributes.no_security == true and (mp.getfilesize)() < 341348 then
  return mp.INFECTED
end
return mp.CLEAN

