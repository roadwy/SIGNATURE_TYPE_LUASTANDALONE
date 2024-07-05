if peattributes.isdll == true and mp.get_mpattribute("NID:Win64/IcedId.PAE!MTB") and mp.getfilesize() > 241664 and mp.getfilesize() < 249856 then
  return mp.INFECTED
end
return mp.CLEAN
