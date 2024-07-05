if mp.get_mpattribute("pea_isdll") and pehdr.NumberOfSections == 5 then
  return mp.INFECTED
end
return mp.CLEAN
