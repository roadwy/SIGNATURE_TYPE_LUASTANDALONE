-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/30788e7bd067 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 3 and (hstrlog[3]).hitcount > 5 then
  return mp.INFECTED
end
return mp.CLEAN

