if this_sigattrlog[2].matched and this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 and this_sigattrlog[2].utf8p2 and string.match(bm.get_imagepath():lower(), "appdata\\local\\(.*)") == string.match(this_sigattrlog[1].utf8p1:lower(), "%%localappdata%%\\(.*)") and tonumber(safeJsonDeserialize(this_sigattrlog[2].utf8p2).append_size) == 334 then
  reportTimingData()
  bm.add_related_string("file_append_meta", this_sigattrlog[2].utf8p2, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
