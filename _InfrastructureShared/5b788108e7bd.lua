-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5b788108e7bd 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and (mp.get_mpattribute)("HSTR:PossibleVcEpStub") then
  return mp.INFECTED
end
return mp.CLEAN

