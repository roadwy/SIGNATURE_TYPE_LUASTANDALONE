if mp.get_mpattribute("pea_isdll") and pe.query_import(pe.IMPORT_STATIC, 1751160259) then
  return mp.INFECTED
end
return mp.CLEAN
