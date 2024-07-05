if peattributes.no_security == true and mp.getfilesize() <= 221184 and mp.getfilesize() >= 204800 and mp.get_mpattribute("NID:PossibleRyuk") then
  return mp.INFECTED
end
return mp.CLEAN
