-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/76784c658e69 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.ImageBase == 675807232 then
  return mp.INFECTED
end
return mp.CLEAN

