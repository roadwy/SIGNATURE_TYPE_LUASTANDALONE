if peattributes.no_security == true and mp.getfilesize() >= 172032 and mp.getfilesize() <= 184320 and pehdr.NumberOfSections >= 5 and pehdr.NumberOfSections <= 7 and pesecs[3].Name == "EJf-ov" then
  return mp.INFECTED
end
return mp.CLEAN
