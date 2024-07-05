if this_sigattrlog[2].matched and this_sigattrlog[3].matched and string.match(string.lower(this_sigattrlog[2].utf8p1), "[^/]+$") == string.match(string.lower(this_sigattrlog[3].utf8p1), "[^/]+$") then
  return mp.INFECTED
end
return mp.CLEAN
