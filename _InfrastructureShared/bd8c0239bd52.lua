if mp.HSTR_WEIGHT >= 16 and mp.getfilesize() < 2097152 then
  return mp.INFECTED
end
return mp.CLEAN
