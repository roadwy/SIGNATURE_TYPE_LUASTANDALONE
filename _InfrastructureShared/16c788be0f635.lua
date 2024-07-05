if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("HSTR:TrojanClicker:Win64/Fleercivet.B")
end
if mp.HSTR_WEIGHT >= 7 then
  if pehdr.Machine == 332 then
    mp.changedetectionname(805306451)
  end
  return mp.INFECTED
end
return mp.CLEAN
