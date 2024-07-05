if peattributes.isdriver == false and peattributes.isexe and peattributes.no_security and mp.getfilesize() > 1376256 and mp.getfilesize() < 5242880 and pesecs[3].Name == ".data" then
  return mp.INFECTED
end
return mp.CLEAN
