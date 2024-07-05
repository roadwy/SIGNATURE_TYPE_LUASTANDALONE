if string.find(string.lower(mp.getfilename()), ".inetloc") ~= nil or string.find(string.lower(mp.getfilename()), ".fileloc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
