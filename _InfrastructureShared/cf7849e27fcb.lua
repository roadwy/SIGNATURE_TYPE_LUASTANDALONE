if peattributes.isdll and mp.getfilesize() < 238593 then
  if mp.HSTR_WEIGHT == 11 then
    return mp.SUSPICIOUS
  end
  if mp.HSTR_WEIGHT == 10 then
    return mp.LOWFI
  end
end
return mp.CLEAN
