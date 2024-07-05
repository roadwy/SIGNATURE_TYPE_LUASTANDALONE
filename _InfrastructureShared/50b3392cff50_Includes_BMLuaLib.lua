if isTamperProtectionOn() then
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
