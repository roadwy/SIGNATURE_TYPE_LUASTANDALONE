if string.match(string.lower(mp.getfilename()), "%.m4$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
