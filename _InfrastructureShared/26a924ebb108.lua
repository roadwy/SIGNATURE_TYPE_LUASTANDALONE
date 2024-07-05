if nri.GetConnectionString():find("DestPort=3389;", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
