if peattributes.no_security == false and mp.get_mpattribute("TEL:REVCERT:SinghAgile.A") then
  return mp.INFECTED
end
return mp.CLEAN
