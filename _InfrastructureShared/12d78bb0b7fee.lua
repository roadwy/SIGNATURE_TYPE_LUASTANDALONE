-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12d78bb0b7fee 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true and (mp.get_mpattribute)("pea_headerchecksum0") then
  return mp.INFECTED
end
return mp.CLEAN

