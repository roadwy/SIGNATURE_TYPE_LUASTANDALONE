if mp.getfilesize() >= 172032 and mp.getfilesize() <= 176128 and pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 6 and mp.get_mpattribute("NID:GandCrab.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
