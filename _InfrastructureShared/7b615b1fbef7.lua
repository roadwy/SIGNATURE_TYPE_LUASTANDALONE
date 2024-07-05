if mp.get_mpattribute("CERT:PUA:Win32/FusionCore.AB") then
  return mp.INFECTED
end
return mp.CLEAN
