if string.find(mp.getfilename(), "%-%>%(%w+Sfx%)%-%>CMT$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
