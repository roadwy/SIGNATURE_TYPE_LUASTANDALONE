if pe.query_import(pe.IMPORT_STATIC, 2832782153) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 3514167808) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 1794917727) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN
