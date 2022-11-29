-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d89c4a0dd38 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).CompanyName == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.LOWFI

