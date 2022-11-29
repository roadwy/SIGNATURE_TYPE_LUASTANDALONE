-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b678cd4e6259 

-- params : ...
-- function num : 0
if peattributes.isvbpcode or peattributes.isvbnative then
  return mp.INFECTED
end
return mp.CLEAN

