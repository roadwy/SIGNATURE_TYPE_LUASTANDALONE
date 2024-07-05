if mp.HSTR_WEIGHT >= 2 then
  if pehdr.Machine == 34404 then
    mp.changedetectionname(805306678)
  end
  return mp.INFECTED
end
return mp.CLEAN
