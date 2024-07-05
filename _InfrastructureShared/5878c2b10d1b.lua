if peattributes.isdll == true and peattributes.hasexports == true and mp.get_mpattribute("NID:Win64/Bumblebee.PB!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
