if peattributes.isexe == true and peattributes.no_security == true and peattributes.ismsil == false and mp.getfilesize() < 900000 and mp.getfilesize() > 620000 or mp.getfilesize() < 307200 and mp.getfilesize() > 204800 then
  return mp.INFECTED
end
return mp.CLEAN
