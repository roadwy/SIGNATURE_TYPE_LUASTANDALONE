-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2778368b8ac6 

-- params : ...
-- function num : 0
if peattributes.isdll == false and (mp.getfilesize)() < 600000 then
  return mp.SUSPICIOUS
end
;
(mp.set_mpattribute)("HSTR:Obfuscator_CheckApiArtifact2")
return mp.CLEAN

