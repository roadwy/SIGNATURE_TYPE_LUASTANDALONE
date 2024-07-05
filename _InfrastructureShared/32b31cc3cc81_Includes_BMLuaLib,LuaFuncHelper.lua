local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
bm.add_related_string("BFEC", tostring(versioning.GetEngineBuild()) .. ": " .. L0_0, bm.RelatedStringBMReport)
return mp.INFECTED
