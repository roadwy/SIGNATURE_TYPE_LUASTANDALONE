-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d78658592f3 

-- params : ...
-- function num : 0
if peattributes.isvbnative and (pesecs[3]).SizeOfRawData > 65536 then
  return mp.INFECTED
end
return mp.CLEAN

