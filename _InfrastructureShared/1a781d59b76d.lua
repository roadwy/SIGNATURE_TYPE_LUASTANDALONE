if peattributes.isexe == false or peattributes.no_imports == true then
  return mp.CLEAN
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 2974543303) or 0 ~= pe.query_import(pe.IMPORT_STATIC, 4277576534) then
  return mp.INFECTED
end
return mp.CLEAN
