-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/102789f707efa 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.headerchecksum0 then
  return mp.INFECTED
end
return mp.CLEAN

