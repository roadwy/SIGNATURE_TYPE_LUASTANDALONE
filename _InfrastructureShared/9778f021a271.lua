-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9778f021a271 

-- params : ...
-- function num : 0
if peattributes.isexe and (pesecs[8]).Name == ".rsrc" and (pesecs[8]).SizeOfRawData > 2228224 and (pesecs[8]).SizeOfRawData < 2293760 then
  return mp.INFECTED
end
return mp.CLEAN

