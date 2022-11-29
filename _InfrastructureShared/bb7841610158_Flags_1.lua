-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bb7841610158_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 1 then
  (mp.set_mpattribute)("CRUMCryptor")
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

