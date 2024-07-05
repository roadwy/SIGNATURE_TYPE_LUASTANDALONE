if string.match(string.lower(mp.getfilename()), "%.php$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
