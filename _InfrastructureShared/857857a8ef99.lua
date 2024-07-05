if (mp.get_mpattribute("pea_isexe") or mp.get_mpattribute("pea_isdll")) and mp.get_mpattribute("FOP64:GoLang64") then
  return mp.INFECTED
end
return mp.CLEAN
