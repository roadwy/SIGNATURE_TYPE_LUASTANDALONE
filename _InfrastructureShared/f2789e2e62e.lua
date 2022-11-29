-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f2789e2e62e 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 4096 then
  return mp.INFECTED
end
return mp.CLEAN

