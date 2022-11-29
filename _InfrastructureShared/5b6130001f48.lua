-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5b6130001f48 

-- params : ...
-- function num : 0
if peattributes.no_security == true and (mp.getfilesize)() < 300000 then
  return mp.INFECTED
end
return mp.CLEAN

