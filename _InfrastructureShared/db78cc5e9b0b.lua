if 0 ~= pe.query_import(pe.IMPORT_STATIC, 3781839709) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 3358620111) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 4213996749) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 2125492999) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 890811841) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 4180176840) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 1497271799) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 3287693681) then
  return mp.INFECTED
end
if 0 ~= pe.query_import(pe.IMPORT_STATIC, 2455191392) then
  return mp.INFECTED
end
if mp.get_mpattribute("HSTR:Adware:Win32/Lollipop_Check_ARG") then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT > 21 and peattributes.suspicious_image_version then
  return mp.INFECTED
end
return mp.LOWFI
