if mp.get_mpattribute("VirTool:Win32/Vbcrypts") and 0 ~= pe.query_import(pe.IMPORT_STATIC, 1976129679) and string.lower(string.sub(pe.get_versioninfo().ProductName, 1, 5)) == "skype" then
  return mp.INFECTED
end
return mp.CLEAN
