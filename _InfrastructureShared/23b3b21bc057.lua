if this_sigattrlog[1].matched and string.lower(this_sigattrlog[1].utf8p2) ~= nil and string.lower(this_sigattrlog[1].utf8p2):find("system", 1, true) and string.lower(this_sigattrlog[1].utf8p2):find("security", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
