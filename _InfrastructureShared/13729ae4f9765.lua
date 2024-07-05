if string.find(string.lower(mp.getfilename()), "%-%>%(encscript%)$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
