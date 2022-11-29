-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/cd78f6e95d8d 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched and not (hstrlog[2]).matched) or not (hstrlog[3]).matched) and not (hstrlog[4]).matched) or 0 + 1 + 1 == 2 then
  return mp.INFECTED
end
return mp.CLEAN

