if string.find(mp.getfilename(), "->(Rtf", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
