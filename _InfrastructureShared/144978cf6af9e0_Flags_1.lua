-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/144978cf6af9e0_Flags_1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 16 then
  return mp.INFECTED
end
return mp.SUSPICIOUS

