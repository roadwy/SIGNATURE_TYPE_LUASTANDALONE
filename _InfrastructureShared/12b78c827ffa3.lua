if pehdr.NumberOfSections == 3 and mp.get_mpattribute("pea_headerchecksum0") and mp.getfilesize() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN
