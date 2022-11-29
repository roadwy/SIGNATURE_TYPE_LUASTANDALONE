-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/66788bd521b9 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT < 103 and peattributes.isexe and (mp.get_mpattribute)("reads_vdll_code") then
  return mp.INFECTED
end
return mp.CLEAN

