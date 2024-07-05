if mp.get_mpattribute("BM_MZ_FILE") and (mp.get_mpattribute("pea_hasappendeddata") or mp.get_mpattribute("LoD:Lua:PossibleShellter")) then
  return mp.INFECTED
end
return mp.CLEAN
