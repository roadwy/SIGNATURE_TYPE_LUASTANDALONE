if mp.HSTR_WEIGHT >= 2 and hstrlog[1].matched then
  return mp.INFECTED
end
pe.set_peattribute("hstr_exhaustive", true)
pe.reemulate()
mp.set_mpattribute("HSTR:VirTool:Win64/Rovnix.C")
return mp.CLEAN
