if peattributes.isdll and mp.getfilesize() < 390000 then
  if mp.HSTR_WEIGHT >= 11 then
    return mp.SUSPICIOUS
  end
  if mp.HSTR_WEIGHT >= 10 then
    pe.set_peattribute("hstr_exhaustive", true)
    pe.reemulate()
  end
  return mp.LOWFI
end
return mp.CLEAN
