-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PUA_Block_PiriformBundler_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.UfsGetMetadataBool)("LUAUFS:NSISHasPiriformCert", true) == 0 and "LUAUFS:NSISHasPiriformCert" then
  return mp.INFECTED
end
return mp.CLEAN

