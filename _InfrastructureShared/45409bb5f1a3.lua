-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45409bb5f1a3 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 6 and (pesecs[pehdr.NumberOfSections]).Name == ".config" then
  return mp.INFECTED
end
return mp.CLEAN

