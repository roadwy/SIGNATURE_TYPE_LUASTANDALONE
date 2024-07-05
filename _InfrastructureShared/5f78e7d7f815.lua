if mp.get_mpattribute("pea_isexe") or mp.get_mpattribute("pea_isdll") then
  return mp.INFECTED
end
return mp.CLEAN
