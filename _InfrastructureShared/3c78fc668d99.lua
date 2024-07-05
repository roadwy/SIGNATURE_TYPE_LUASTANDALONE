if mp.get_mpattribute("HSTR:GolangBinary") and mp.getfilesize() < 6291456 and mp.getfilesize() < 8388608 then
  return mp.INFECTED
end
return mp.CLEAN
