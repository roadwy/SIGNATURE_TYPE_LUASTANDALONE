if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  bm.trigger_sig("DroppedKernelModule", this_sigattrlog[1].utf8p1)
end
return mp.CLEAN
