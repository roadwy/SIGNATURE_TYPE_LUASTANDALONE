if mp.get_mpattribute("MpHasExpensiveLoop") then
  return mp.INFECTED
end
return mp.CLEAN
