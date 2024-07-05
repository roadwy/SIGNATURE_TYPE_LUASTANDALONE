if this_sigattrlog[1].matched and string.sub(this_sigattrlog[1].wp1, -4) == ".sdb" then
  return mp.INFECTED
end
return mp.CLEAN
