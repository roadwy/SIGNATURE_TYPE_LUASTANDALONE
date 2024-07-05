if mp.UfsGetMetadataBool("LUAUFS:NSISFileZillaBndlCert", true) == 0 and mp.UfsGetMetadataBool("LUAUFS:NSISFileZillaBndlCert", true) then
  return mp.INFECTED
end
return mp.CLEAN
