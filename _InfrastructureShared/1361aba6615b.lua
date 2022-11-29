-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1361aba6615b 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 4 then
  return mp.INFECTED
end
return mp.CLEAN

