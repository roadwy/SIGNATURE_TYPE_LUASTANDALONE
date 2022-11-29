-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8a78a8554a08 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.hasstandardentry and pehdr.NumberOfSections >= 5 and (pesecs[4]).Name == ".rsrc" and (pesecs[4]).SizeOfRawData >= 86016 then
  return mp.INFECTED
end
return mp.SUSPICIOUS

