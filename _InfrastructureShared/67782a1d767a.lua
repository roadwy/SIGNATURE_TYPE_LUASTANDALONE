-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67782a1d767a 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_hasappendeddata") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

