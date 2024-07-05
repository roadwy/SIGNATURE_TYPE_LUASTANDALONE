if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil and this_sigattrlog[1].utf8p1 ~= "" then
  bm.trigger_sig("ArchiveDroppedOnMac", this_sigattrlog[1].utf8p1)
end
return mp.CLEAN
