if mp.getfilesize() >= 90112 and mp.getfilesize() <= 98304 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and mp.get_mpattribute("NID:Hupigon.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
