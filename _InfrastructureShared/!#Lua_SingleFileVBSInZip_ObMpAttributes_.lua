-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SingleFileVBSInZip_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:SingleFileInZip", true) ~= 0 or not "Lua:SingleFileInZip" then
  return mp.CLEAN
end
return mp.INFECTED

