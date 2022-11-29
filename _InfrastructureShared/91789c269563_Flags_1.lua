-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/91789c269563_Flags_1 

-- params : ...
-- function num : 0
if (not (hstrlog[2]).matched or (mp.getfilesize)() < 500000) and (hstrlog[1]).matched and not (0 + 1) >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

