if not mp.get_mpattribute("SIGATTR:DelphiFile") then
  return mp.CLEAN
end
return mp.INFECTED
