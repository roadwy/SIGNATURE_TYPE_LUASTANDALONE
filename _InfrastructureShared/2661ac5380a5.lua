-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2661ac5380a5 

-- params : ...
-- function num : 0
if (mp.IsTrustedFile)(false) == true or (mp.IsKnownFriendlyFile)((mp.getfilename)(), true, true) == true then
  return mp.CLEAN
end
return mp.INFECTED

