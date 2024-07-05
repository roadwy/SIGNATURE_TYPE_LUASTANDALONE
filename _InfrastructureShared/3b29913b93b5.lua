if string.match(string.lower(mp.getfilename()), "%.xz$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
