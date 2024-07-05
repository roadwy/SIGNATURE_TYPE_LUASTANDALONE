if mp.getfilesize() < 2048000 and pehdr.NumberOfSections == 5 and mp.get_mpattribute("pea_headerchecksum0") and pesecs[5].Name == "" then
  return mp.INFECTED
end
return mp.CLEAN
