if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if mp.get_mpattribute("Tracur_decryption") then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Tracur_Antiemu")
return mp.LOWFI
