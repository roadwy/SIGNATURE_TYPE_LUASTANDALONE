if string.find(string.lower(mp.getfilename()), "%-%>%[cmdembedded%]$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
