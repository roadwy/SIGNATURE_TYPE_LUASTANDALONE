-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3b784f273e97_Flags_1 

-- params : ...
-- function num : 0
if (((hstrlog[1]).matched and not (hstrlog[2]).matched) or 0 + 1 + 1 == 2) and (mp.getfilesize)() > 75000 and (mp.getfilesize)() < 82000 then
  return mp.INFECTED
end
return mp.CLEAN

