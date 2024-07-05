if mp.HSTR_WEIGHT >= 2 then
  if pehdr.Subsystem == 1 then
    mp.changedetectionname(805306439)
  elseif pehdr.Machine == 34404 then
    mp.changedetectionname(805306438)
  end
  return mp.INFECTED
end
return mp.CLEAN
