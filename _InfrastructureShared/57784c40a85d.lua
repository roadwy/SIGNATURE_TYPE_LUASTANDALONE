if mp.get_mpattribute("HSTR:GolangBinary") and mp.getfilesize() > 5242880 and mp.getfilesize() < 15728640 then
  return mp.INFECTED
end
return mp.CLEAN
