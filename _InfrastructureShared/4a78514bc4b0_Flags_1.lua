-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4a78514bc4b0_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if ((hstrlog[3]).matched or (hstrlog[4]).matched) and (mp.get_mpattribute)("pea_genpacked") then
  return mp.INFECTED
end
return mp.CLEAN

