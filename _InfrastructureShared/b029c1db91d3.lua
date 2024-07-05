if string.find(string.lower(mp.getfilename()), "%-%>%(rarsfx%)%-%>inst%.vbs$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
