-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d9789f754c2f 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_ismsil") and (mp.get_mpattribute)("SIGA:MSIL/Suspicious.CreateRunKey.B") then
  return mp.INFECTED
end
return mp.CLEAN

