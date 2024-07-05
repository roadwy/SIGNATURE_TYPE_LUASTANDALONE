if epcode[1] == 232 and epcode[6] == 233 and mp.get_mpattribute("Necurs_ObfuscatorADs") then
  return mp.SUSPICIOUS
end
return mp.CLEAN
