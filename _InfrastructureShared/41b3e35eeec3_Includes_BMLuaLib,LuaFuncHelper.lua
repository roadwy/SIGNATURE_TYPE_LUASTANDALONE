if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 and tonumber(safeJsonDeserialize(this_sigattrlog[3].utf8p2).append_size) >= 200 and tonumber(safeJsonDeserialize(this_sigattrlog[3].utf8p2).append_size) <= 500 then
  reportTimingData()
  bm.add_related_string("file_append_meta", this_sigattrlog[3].utf8p2, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
