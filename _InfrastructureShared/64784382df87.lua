-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/64784382df87 

-- params : ...
-- function num : 0
if (string.find)(((pe.get_versioninfo)()).CompanyName, "xuncnet.cn") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

