-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c08fe87864f3 

-- params : ...
-- function num : 0
if (hstrlog[4]).hitcount >= 20 then
  return mp.INFECTED
end
return mp.CLEAN

