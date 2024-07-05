if mp.getfilesize() <= 2048 and mp.get_mpattribute("PACKED_WITH:[Eval]") then
  return mp.INFECTED
end
return mp.CLEAN
