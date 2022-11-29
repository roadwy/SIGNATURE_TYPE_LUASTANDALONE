-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4d788668a4c4 

-- params : ...
-- function num : 0
if epcode[1] == 104 and epcode[6] == 195 and epcode[7] == 144 then
  return mp.INFECTED
end
return mp.CLEAN

