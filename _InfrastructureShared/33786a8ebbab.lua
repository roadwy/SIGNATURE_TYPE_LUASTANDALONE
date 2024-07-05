if mp.get_mpattribute("NID:Trojan:Win64/Stealc.RPX1!MTB") and mp.get_mpattribute("CERT:Trojan:Win64/Stealc.RPX1!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
