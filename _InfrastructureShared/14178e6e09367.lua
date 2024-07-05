if not mp.get_mpattribute("HSTR:SoftwareBundler:Win32/Avarus") then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
mp.set_mpattribute("PUA:Block:Avarus")
return mp.INFECTED
