-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8f8cd7d0a601_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[1]).VA < (hstrlog[2]).VA then
  return mp.INFECTED
end
return mp.CLEAN

