if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  bm.add_related_string("ransom_meta", this_sigattrlog[2].utf8p2, bm.RelatedStringBMReport)
  sms_untrusted_process()
  return mp.INFECTED
end
return mp.CLEAN
