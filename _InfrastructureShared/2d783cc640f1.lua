if mp.get_mpattribute("pea_isdll") and pe.get_exports_count() <= 5 and pe.get_exports_count() >= 1 and 5 >= pe.get_imports() and 1 <= pe.get_imports() then
  return mp.INFECTED
end
return mp.CLEAN
