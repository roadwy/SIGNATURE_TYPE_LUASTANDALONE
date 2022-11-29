-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_HtaInsideZipWithIOAVUrl_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("Lua:FileInZip", true) ~= 0 or not "Lua:FileInZip" then
  return mp.CLEAN
end
if (mp.IOAVGetDownloadUrl)() ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

