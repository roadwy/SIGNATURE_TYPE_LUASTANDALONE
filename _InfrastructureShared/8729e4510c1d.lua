if string.find(mp.getfilename(), "%-%>%(RarSfx%)%-%>CMT$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
