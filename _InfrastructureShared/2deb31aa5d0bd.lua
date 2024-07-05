if this_sigattrlog[5].matched and this_sigattrlog[7].matched and string.find(this_sigattrlog[7].utf8p1, this_sigattrlog[5].utf8p1, 1, true) then
  return mp.INFECTED
end
if this_sigattrlog[6].matched and this_sigattrlog[8].matched and string.find(this_sigattrlog[8].utf8p1, this_sigattrlog[6].utf8p1, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
