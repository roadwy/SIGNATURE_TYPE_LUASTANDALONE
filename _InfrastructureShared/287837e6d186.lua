if mp.get_mpattribute("pea_isexe") and mp.get_mpattribute("pea_ismsil") and peattributes.no_security == true and mp.getfilesize() < 1064000 then
  return mp.INFECTED
end
return mp.CLEAN
