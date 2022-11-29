-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d8f3a3179b1 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount == 2 and (hstrlog[2]).hitcount == 1 and (hstrlog[3]).hitcount == 1 and (hstrlog[4]).hitcount == 2 and (hstrlog[5]).hitcount == 1 then
  return mp.INFECTED
end
return mp.CLEAN

