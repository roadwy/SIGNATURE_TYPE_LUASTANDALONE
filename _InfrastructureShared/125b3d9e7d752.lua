-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/125b3d9e7d752 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 600000000 then
  return mp.CLEAN
end
return mp.INFECTED

