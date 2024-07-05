if mp.UfsGetMetadataBool("LUAUFS:NSISHasPiriformCert", true) == 0 and mp.UfsGetMetadataBool("LUAUFS:NSISHasPiriformCert", true) then
  return mp.INFECTED
end
return mp.CLEAN
