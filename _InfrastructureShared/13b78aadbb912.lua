if mp.get_mpattribute("pea_isdll") and pe.get_versioninfo().InternalName == "RunPE.dll" then
  return mp.INFECTED
end
return mp.CLEAN
