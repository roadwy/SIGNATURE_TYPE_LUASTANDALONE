if mp.get_mpattribute("pea_isdll") and mp.getfilesize() < 6656 then
  return mp.INFECTED
end
return mp.CLEAN
