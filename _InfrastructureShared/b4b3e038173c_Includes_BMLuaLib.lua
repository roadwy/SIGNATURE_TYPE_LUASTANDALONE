if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 and reportGenericRansomware(this_sigattrlog[5].utf8p2) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
