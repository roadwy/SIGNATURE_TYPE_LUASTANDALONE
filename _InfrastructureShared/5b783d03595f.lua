if (mp.get_mpattribute("pea_isexe") or mp.get_mpattribute("pea_isdll")) and mp.get_mpattribute("HSTR:GolangBinary") then
  return mp.INFECTED
end
return mp.CLEAN
