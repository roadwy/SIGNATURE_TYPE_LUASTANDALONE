-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b78489a50a0 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and peattributes.epinfirstsect and (pesecs[pehdr.NumberOfSections]).Name == ".rsrc" then
  return mp.INFECTED
end
return mp.CLEAN

