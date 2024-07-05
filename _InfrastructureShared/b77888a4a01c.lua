if hstrlog[3].matched and mp.getfilesize() >= 163840 and mp.getfilesize() <= 196608 then
  return mp.INFECTED
end
if peattributes.no_security == true and mp.getfilesize() >= 163840 and mp.getfilesize() <= 176128 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 8 and mp.get_mpattribute("NID:Emotet.PB!MSR!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
