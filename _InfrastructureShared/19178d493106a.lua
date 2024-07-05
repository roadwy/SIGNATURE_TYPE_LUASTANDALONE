if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.isvbnative then
  return mp.CLEAN
end
if 90000 < mp.getfilesize() then
  return mp.CLEAN
end
if not peattributes.dt_error_heur_exit_criteria then
  return mp.CLEAN
end
return mp.INFECTED
