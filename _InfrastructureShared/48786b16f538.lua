if mp.get_mpattribute("NID:Trojan:Win64/Lotok.RW!MTB") and mp.getfilesize() < 250000 and mp.getfilesize() > 220000 and peattributes.isexe then
  return mp.INFECTED
end
return mp.CLEAN
