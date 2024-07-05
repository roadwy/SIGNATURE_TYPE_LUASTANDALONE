if pehdr.NumberOfSections == 3 and mp.get_mpattribute("pea_headerchecksum0") and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
