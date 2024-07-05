if mp.get_mpattribute("SIGATTR:Backdoor:Win32/Delfdoorlib") == false then
  return mp.LOWFI
end
if mp.HSTR_WEIGHT >= 3 and pe.query_import(pe.IMPORT_STATIC, 2946926388) then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 and mp.get_mpattribute("SIGATTR:ASEP") then
  return mp.INFECTED
end
return mp.CLEAN
