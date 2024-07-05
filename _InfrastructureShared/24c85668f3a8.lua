if mp.getfilesize() > 1000000 then
  return mp.CLEAN
end
if pesecs[1].Name == "UPX0" then
  return mp.CLEAN
end
mp.set_mpattributeex("MpRequestEmsScanTrigger", 15000)
return mp.INFECTED
