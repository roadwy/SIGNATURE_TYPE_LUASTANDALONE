-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2929b9148b48 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 10240 and (mp.getfilesize)() >= 5120 then
  return mp.INFECTED
end
return mp.CLEAN

