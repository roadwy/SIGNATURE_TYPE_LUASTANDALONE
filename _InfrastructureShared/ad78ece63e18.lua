if pe.query_import(pe.IMPORT_STATIC, 3141646879) and mp.get_mpattribute("MpHasExpensiveLoop") then
  return mp.INFECTED
end
return mp.CLEAN
