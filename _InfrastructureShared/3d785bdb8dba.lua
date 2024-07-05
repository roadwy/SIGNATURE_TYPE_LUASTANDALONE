if peattributes.isexe == true and mp.get_mpattribute("NID:Win32/Stealc.MI!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
