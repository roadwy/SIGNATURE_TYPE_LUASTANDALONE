if mp.getfilesize() >= 20480 and mp.getfilesize() <= 24576 and (mp.get_mpattribute("NID:Trickbot.GB!Pra1") or mp.get_mpattribute("NID:Trickbot.GB!Pra2")) then
  return mp.INFECTED
end
return mp.CLEAN
