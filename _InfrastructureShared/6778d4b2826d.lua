if peattributes.no_security == true and mp.getfilesize() >= 720896 and mp.getfilesize() <= 851968 and peattributes.amd64_image and peattributes.headerchecksum0 and peattributes.suspicious_linker_version then
  return mp.INFECTED
end
return mp.CLEAN
