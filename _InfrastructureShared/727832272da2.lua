-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/727832272da2 

-- params : ...
-- function num : 0
if (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 536870912) == 536870912 then
  return mp.INFECTED
end
return mp.CLEAN

