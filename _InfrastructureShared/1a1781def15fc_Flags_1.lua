-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a1781def15fc_Flags_1 

-- params : ...
-- function num : 0
if (((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (mp.getfilesize)() < 47000) and 0 + 1 + 1 + 1 + 1 + 1 + 1 == 6 then
  return mp.INFECTED
end
return mp.CLEAN
