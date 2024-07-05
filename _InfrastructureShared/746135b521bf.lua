if mp.get_mpattribute("pea_no_security") and mp.get_mpattribute("SIGATTR:SetItselfRunKey") and mp.get_mpattribute("SIGATTR:mzinresource") then
  return mp.INFECTED
end
return mp.CLEAN
