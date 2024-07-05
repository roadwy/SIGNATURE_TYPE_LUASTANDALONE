if peattributes.no_security == true and mp.getfilesize() >= 65536 and mp.getfilesize() <= 131072 and mp.get_mpattribute("NID:Buran.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN
