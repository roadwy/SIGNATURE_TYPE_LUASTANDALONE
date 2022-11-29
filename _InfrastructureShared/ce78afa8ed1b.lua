-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ce78afa8ed1b 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 9 then
  return mp.INFECTED
end
return mp.CLEAN

