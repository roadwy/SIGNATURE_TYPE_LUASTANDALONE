if mp.get_mpattribute("AGGR:ExcelFormulaRoutines") and mp.get_mpattribute("LUA:FileSizeLE40000.A") then
  return mp.INFECTED
end
return mp.CLEAN
