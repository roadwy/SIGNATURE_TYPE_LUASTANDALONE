-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/458fcb7a6bdb 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 10 then
  return mp.INFECTED
end
return mp.CLEAN

