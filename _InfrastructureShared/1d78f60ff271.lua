if pehdr.Machine == 34404 and pehdr.Subsystem == 1 and peattributes.isdriver and mp.get_mpattribute("PEPCODE:HasDigitalSignature") and mp.getfilesize() < 100000 then
  return mp.INFECTED
end
return mp.CLEAN
