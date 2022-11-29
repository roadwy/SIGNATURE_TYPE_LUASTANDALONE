-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/46785d86e8b3 

-- params : ...
-- function num : 0
if peattributes.epscn_islast and pehdr.NumberOfSections >= 2 and peattributes.hasstandardentry ~= 1 then
  return mp.INFECTED
end
return mp.CLEAN

