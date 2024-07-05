if peattributes.isdll and mp.getfilesize() < 399000 then
  if mp.HSTR_WEIGHT >= 301 and (mp.bitand(mp.HSTR_WEIGHT, 1) == 1 or mp.bitand(mp.HSTR_WEIGHT, 2) == 2) then
    return mp.SUSPICIOUS
  end
  if mp.HSTR_WEIGHT >= 100 then
    return mp.LOWFI
  end
  if mp.HSTR_WEIGHT >= 1 then
    pe.set_peattribute("hstr_exhaustive", true)
    pe.reemulate()
  end
end
return mp.CLEAN
