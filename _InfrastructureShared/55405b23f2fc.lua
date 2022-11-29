-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55405b23f2fc 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).CompanyName == "Microsoft Corporation" then
  return mp.CLEAN
end
return mp.INFECTED

