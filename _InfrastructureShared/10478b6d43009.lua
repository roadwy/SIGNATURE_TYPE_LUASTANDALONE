if mp.get_mpattribute("pea_isexe") and mp.getfilesize() < 1048000 then
  return mp.INFECTED
end
return mp.CLEAN
