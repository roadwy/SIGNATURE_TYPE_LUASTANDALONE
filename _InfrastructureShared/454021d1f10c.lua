if peattributes.isdll and mp.get_mpattribute("SIGATTR:DelphiFile") then
  return mp.INFECTED
end
return mp.CLEAN
