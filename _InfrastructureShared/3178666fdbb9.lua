if mp.get_mpattribute("MpHasExpensiveLoop") then
  return mp.INFECTED
end
if peattributes.dt_error_heur_exit_criteria then
  return mp.INFECTED
end
return mp.CLEAN
