-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a578b8b97b96_Flags_1 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 and peattributes.epinfirstsect and peattributes.hasappendeddata then
  return mp.INFECTED
end
return mp.SUSPICIOUS

