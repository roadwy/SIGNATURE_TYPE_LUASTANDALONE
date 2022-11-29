-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7278412528a2_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (mp.getfilesize)() < 5000000 then
  return mp.INFECTED
end
return mp.CLEAN

