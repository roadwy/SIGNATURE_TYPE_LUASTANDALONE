-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7c61241b0d12 

-- params : ...
-- function num : 0
if peattributes.no_security == true and (mp.getfilesize)() < 170000 then
  return mp.INFECTED
end
return mp.CLEAN

