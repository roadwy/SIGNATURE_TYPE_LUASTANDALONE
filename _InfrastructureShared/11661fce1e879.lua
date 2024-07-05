if mp.get_mpattribute("pea_isexe") and pehdr.NumberOfSections == 8 then
  return mp.INFECTED
end
return mp.CLEAN
