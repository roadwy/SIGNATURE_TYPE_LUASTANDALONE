if string.find(mp.getfilename(), "%->%(RarSfx%)%->%w+%.exe%->%(RarSfx%)") == nil then
  return mp.CLEAN
end
return mp.INFECTED
