if string.find(mp.getfilename(), "%->%(ZipSfx%)%->.+%.bat$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
