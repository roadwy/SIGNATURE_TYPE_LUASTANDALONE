if mp.HSTR_WEIGHT >= 11 then
  if pehdr.Subsystem == 1 then
    mp.changedetectionname(805306436)
  elseif pehdr.Machine == 34404 then
    mp.changedetectionname(805306435)
  end
  return mp.INFECTED
end
return mp.CLEAN
