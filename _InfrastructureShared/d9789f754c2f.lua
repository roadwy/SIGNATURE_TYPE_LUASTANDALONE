if mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("SIGA:MSIL/Suspicious.CreateRunKey.B") then
  return mp.INFECTED
end
return mp.CLEAN
