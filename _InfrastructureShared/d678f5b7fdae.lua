if mp.HSTR_WEIGHT >= 111 and mp.HSTR_WEIGHT % 100 >= 11 and mp.HSTR_WEIGHT % 10 >= 1 then
  if pehdr.Machine == 34404 then
    mp.changedetectionname(805306476)
  end
  return mp.INFECTED
end
return mp.LOWFI
