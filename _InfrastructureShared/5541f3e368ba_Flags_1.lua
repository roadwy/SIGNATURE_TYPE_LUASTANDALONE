-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5541f3e368ba_Flags_1 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).ProductName == "ePass2001" then
  return mp.CLEAN
end
return mp.INFECTED

