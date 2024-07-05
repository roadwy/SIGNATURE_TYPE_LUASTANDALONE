if not peattributes.isexe then
  return mp.CLEAN
end
if 196418 < mp.getfilesize() then
  return mp.CLEAN
end
if not peattributes.dt_error_heur_exit_criteria then
  return mp.CLEAN
end
return mp.INFECTED
