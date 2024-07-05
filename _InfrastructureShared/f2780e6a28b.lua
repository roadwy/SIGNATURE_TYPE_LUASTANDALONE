if string.find(mp.getfilename(), "%-%>%(RarSfx%)%-%>%w+%.vbs$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
