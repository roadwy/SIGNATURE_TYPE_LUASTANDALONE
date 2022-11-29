-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1540dc334e2f 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 675000 and (mp.getfilesize)() > 655000 then
  return mp.INFECTED
end
return mp.CLEAN

