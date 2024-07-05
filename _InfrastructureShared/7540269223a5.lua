if mp.get_mpattribute("RPF:TopLevelFile") and not mp.get_mpattribute("AGGR:MSIL:GenCommercialObfuscator.A") and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 then
  return mp.INFECTED
end
return mp.CLEAN
