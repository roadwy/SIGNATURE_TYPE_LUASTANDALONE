if peattributes.isvbnative == true and mp.getfilesize() < 300000 and 0 ~= pe.query_import(pe.IMPORT_STATIC, 3727706256) then
  return mp.INFECTED
end
return mp.CLEAN
