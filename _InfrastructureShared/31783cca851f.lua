mp.set_mpattribute("do_exhaustivehstr_rescan")
pe.set_peattribute("deep_analysis", true)
pe.reemulate()
return mp.INFECTED
