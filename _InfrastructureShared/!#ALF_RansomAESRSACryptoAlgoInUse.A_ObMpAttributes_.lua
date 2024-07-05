if mp.get_mpattribute("MpContentDetected") and mp.get_mpattributesubstring("Detection:Ransom:") then
  return mp.INFECTED
end
return mp.CLEAN
