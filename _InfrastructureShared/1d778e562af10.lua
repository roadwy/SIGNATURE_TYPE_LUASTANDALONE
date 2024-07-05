mp.set_mpattribute("PUA:Block:OutBrowse")
if not mp.get_mpattribute("HSTR:SoftwareBundler:Win32/Avarus") and not peattributes.hstr_exhaustive then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
return mp.INFECTED
