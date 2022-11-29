-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15761f6474bcf 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 2 then
  return mp.INFECTED
end
return mp.CLEAN

