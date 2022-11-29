-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_FromMsWordExtFile_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:MsWordExt", true) ~= 0 or not "Lua:MsWordExt" then
  return mp.CLEAN
end
return mp.INFECTED

