if mp.getfilesize() >= 491520 and mp.getfilesize() <= 499712 and pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 8 and mp.get_mpattribute("NID:Emotet.GU!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
