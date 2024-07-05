if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
  bm.add_related_string("AdditionalInfo", this_sigattrlog[1].utf8p2, bm.RelatedStringBMReport)
end
return mp.INFECTED
