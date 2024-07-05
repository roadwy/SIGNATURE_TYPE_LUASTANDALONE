local L0_0
L0_0 = isTamperProtectionOn
L0_0 = L0_0(false)
bm.add_related_string("TpState", tostring(L0_0), bm.RelatedStringBMReport)
add_parents()
return mp.INFECTED
