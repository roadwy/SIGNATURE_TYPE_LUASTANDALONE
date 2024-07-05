if string.match(string.lower(mp.getfilename()), "%.c$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
