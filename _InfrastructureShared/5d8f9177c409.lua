if mp.get_mpattribute("MpExcelFormulaRoutines") and mp.get_mpattribute("RPF:XlsAbnormalSheetStateBits") then
  return mp.INFECTED
end
return mp.CLEAN
