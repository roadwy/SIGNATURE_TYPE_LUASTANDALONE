local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
bm.add_related_string("vname", L0_0, bm.RelatedStringBMReport)
bm.trigger_sig_self_propagate("SuspChildProcessLaunch", L0_0)
return mp.INFECTED
