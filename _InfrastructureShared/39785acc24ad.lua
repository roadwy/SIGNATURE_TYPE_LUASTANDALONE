if peattributes.isdll == true and mp.get_mpattribute("NID:Win32/Qakbot.PL!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
