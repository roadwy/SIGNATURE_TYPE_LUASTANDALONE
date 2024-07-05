if string.find(string.lower(mp.getfilename()), "%-%>%(rarsfx%)%-%>%w+%.vbs$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
