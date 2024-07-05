if string.find(mp.getfilename(), "(Rtf0000)", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
