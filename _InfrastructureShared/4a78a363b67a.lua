if peattributes.no_security == true and mp.getfilesize() >= 917504 and mp.getfilesize() <= 958464 and pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 6 and mp.get_mpattribute("NID:GerWiper.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
