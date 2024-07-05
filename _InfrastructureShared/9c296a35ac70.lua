if string.find(string.lower(mp.getfilename()), "%-%>%(zipsfx%)%-%>%w+%.bat$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
