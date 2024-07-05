if peattributes.isexe == false or peattributes.no_imports == true then
  return mp.CLEAN
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 2358328843) or 0 ~= pe.query_import(pe.IMPORT_STATIC, 3567207411) then
  return mp.INFECTED
end
return mp.CLEAN
