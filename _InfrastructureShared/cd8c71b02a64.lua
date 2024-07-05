if mp.HSTR_WEIGHT >= 6 and mp.getfilesize() < 2097152 then
  return mp.INFECTED
end
return mp.CLEAN
