if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  bm.add_related_file(this_sigattrlog[3].utf8p2)
end
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  bm.add_related_file(this_sigattrlog[4].utf8p2)
end
return mp.INFECTED
