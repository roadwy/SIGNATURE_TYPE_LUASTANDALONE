-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9578008eed79_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 40960 or pehdr.NumberOfSections > 4 then
  return mp.LOWFI
end
return mp.INFECTED

