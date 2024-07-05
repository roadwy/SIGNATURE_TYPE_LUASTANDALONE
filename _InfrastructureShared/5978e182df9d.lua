if (mp.get_mpattribute("pea_isexe") or mp.get_mpattribute("pea_isdll")) and mp.getfilesize() < 512000 then
  return mp.INFECTED
end
return mp.CLEAN
