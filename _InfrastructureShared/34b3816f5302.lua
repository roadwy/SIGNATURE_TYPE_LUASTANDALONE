if string.match(this_sigattrlog[1].utf8p1, "\\%l%l%l%l%l%.exe$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
