if mp.get_mpattribute("pea_isexe") and peattributes.no_security == true and mp.getfilesize() < 131000 then
  return mp.INFECTED
end
return mp.CLEAN
