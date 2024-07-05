if peattributes.isdll == true and peattributes.amd64_image and mp.get_mpattribute("NID:Win64/Bumblebee.PC!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
