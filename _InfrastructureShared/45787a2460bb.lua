-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45787a2460bb 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount > 3 then
  return mp.INFECTED
end
return mp.CLEAN

