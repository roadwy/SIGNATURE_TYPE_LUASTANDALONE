-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35405dea4ee1 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).OriginalFilename == "riched32.dll" and ((pe.get_versioninfo)()).CompanyName == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN

