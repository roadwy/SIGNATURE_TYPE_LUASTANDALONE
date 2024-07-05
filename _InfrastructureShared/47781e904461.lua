if mp.get_mpattribute("MpHasValidProjPath") and mp.get_mpattribute("pea_hasappendeddata") and peattributes.isexe then
  return mp.LOWFI
end
return mp.CLEAN
