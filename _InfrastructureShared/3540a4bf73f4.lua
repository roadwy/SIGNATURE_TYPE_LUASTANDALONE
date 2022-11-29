-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3540a4bf73f4 

-- params : ...
-- function num : 0
if (mp.getfilesize)() == 88064 or (mp.getfilesize)() == 90624 then
  return mp.INFECTED
end
return mp.CLEAN

