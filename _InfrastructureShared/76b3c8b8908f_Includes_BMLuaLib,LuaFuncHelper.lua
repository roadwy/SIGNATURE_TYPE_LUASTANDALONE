local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
end
bm.trigger_sig("ESPCreateFile.A", L0_0)
return mp.CLEAN
