-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/297887558c53 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if (mp.getfilesize)() > 32768 then
  return mp.CLEAN
end
return mp.INFECTED

