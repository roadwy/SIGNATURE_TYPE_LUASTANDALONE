if this_sigattrlog[9].matched and this_sigattrlog[10].matched and string.lower(this_sigattrlog[9].p1):match("c:\\temp\\(%l+)%.zip") == string.lower(this_sigattrlog[10].p1):match("c:\\temp\\%l+%.(%l+)") then
  return mp.INFECTED
end
return mp.CLEAN
