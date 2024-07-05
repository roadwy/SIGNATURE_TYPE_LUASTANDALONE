if mp.getfilesize() == 47576 and peattributes.no_security == true and peattributes.isexe == true and pesecs[4].Name == ".ex_rsc" then
  return mp.INFECTED
end
return mp.CLEAN
