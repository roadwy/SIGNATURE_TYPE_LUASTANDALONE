-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f8783808d286 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:NSIS_Installer") or (mp.get_mpattribute)("HSTR:NSIS.gen!A") and (mp.get_mpattribute)("LUA:FileSizeLE1M.A") then
  return mp.INFECTED
end
return mp.CLEAN

