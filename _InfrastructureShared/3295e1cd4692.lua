if epcode[1] ~= 106 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 5 or pesecs[5].Name ~= ".import" then
  return mp.CLEAN
end
if pe.query_import(pe.IMPORT_STATIC, 2142642642) then
  return mp.INFECTED
end
return mp.CLEAN
