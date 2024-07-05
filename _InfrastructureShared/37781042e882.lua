if mp.get_mpattribute("NID:Win64/Qakbot.PAN!MTB") and mp.getfilesize() > 131072 and mp.getfilesize() < 327680 then
  return mp.INFECTED
end
return mp.CLEAN
