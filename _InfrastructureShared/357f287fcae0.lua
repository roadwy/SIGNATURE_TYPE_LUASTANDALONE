if 0 ~= pe.query_import(pe.IMPORT_STATIC, 1589549540) and mp.crc32(-1, epcode, 1, 15) == 183454422 then
  return mp.INFECTED
end
return mp.CLEAN
