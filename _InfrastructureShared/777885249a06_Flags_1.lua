if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 8 and mp.get_mpattribute("SIGATTR:DelphiFile") then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
  return mp.SUSPICIOUS
end
return mp.CLEAN
