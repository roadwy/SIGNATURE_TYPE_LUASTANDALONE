if peattributes.isdll and mp.getfilesize() > 5447680 and mp.getfilesize() < 6164480 and pe.query_import(pe.IMPORT_STATIC, 3164448353) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 2744197095) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 2717511079) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 537135066) ~= 0 and pe.query_import(pe.IMPORT_STATIC, 3293213921) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN
