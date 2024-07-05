if mp.bitand(mp.HSTR_WEIGHT, 15) + 2 >= 4 then
  if pehdr.Machine ~= 332 then
    mp.changedetectionname(805306465)
  end
  return mp.INFECTED
end
return mp.CLEAN
