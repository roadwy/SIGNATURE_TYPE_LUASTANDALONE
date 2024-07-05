if pe.query_import(pe.IMPORT_STATIC, 2515381460) ~= 0 then
  return mp.SUSPICIOUS
end
return mp.CLEAN
