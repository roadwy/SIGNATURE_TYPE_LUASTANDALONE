if mp.HSTR_WEIGHT >= 5 then
  if mp.getfilesize() < 61440 and mp.getfilesize() > 57344 then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return mp.LOWFI
