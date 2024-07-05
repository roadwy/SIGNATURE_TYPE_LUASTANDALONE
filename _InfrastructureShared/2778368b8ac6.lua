if peattributes.isdll == false and mp.getfilesize() < 600000 then
  return mp.SUSPICIOUS
end
mp.set_mpattribute("HSTR:Obfuscator_CheckApiArtifact2")
return mp.CLEAN
