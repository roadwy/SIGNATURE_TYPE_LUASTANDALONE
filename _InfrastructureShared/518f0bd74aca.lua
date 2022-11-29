-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/518f0bd74aca 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount >= 10 then
  return mp.INFECTED
end
return mp.CLEAN

