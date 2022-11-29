-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3d8f8c6d12aa 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount > 6 then
  return mp.INFECTED
end
return mp.CLEAN

