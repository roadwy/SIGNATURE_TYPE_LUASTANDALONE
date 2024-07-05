if mp.get_mpattribute("NID:Trojan:Win32/RopProof.RPX!MTB") and pesecs[7].Name == ".ropf" and mp.getfilesize() < 85000 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
