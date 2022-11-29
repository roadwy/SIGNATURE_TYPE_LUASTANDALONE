-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/287837e6d186 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and (mp.get_mpattribute)("pea_ismsil") and peattributes.no_security == true and (mp.getfilesize)() < 1064000 then
  return mp.INFECTED
end
return mp.CLEAN

