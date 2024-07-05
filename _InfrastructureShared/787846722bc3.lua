if mp.get_mpattribute("SIGATTR:PUA:SoftCnapp") then
  return mp.INFECTED
end
return mp.CLEAN
