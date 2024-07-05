if pehdr.Machine == 332 then
  mp.changedetectionname(805306393)
end
if mp.HSTR_WEIGHT >= 8 then
  if mp.HSTR_WEIGHT >= 10 then
    return mp.INFECTED
  end
  return mp.SUSPICIOUS
end
return mp.CLEAN
