-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5d8f9177c409 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpExcelFormulaRoutines") and (mp.get_mpattribute)("RPF:XlsAbnormalSheetStateBits") then
  return mp.INFECTED
end
return mp.CLEAN

