if peattributes.packed and mp.get_mpattribute("SIGATTR:deepemu") and mp.get_mpattribute("MpHasExpensiveLoop") then
  return mp.INFECTED
end
return mp.CLEAN
