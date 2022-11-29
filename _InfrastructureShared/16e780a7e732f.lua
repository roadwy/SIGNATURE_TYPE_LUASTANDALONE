-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/16e780a7e732f 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

