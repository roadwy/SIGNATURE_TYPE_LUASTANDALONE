if mp.get_mpattribute("pea_isexe") and mp.get_mpattribute("HSTR:HasSEH") and mp.get_mpattribute("Lua:DelphiHeuristicsThrottle") then
  return mp.INFECTED
end
return mp.CLEAN
