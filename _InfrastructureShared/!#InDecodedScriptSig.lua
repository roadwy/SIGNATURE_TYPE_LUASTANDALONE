if mp.UfsGetMetadataBool("ScriptSigDecoded", false) == 0 and mp.UfsGetMetadataBool("ScriptSigDecoded", false) == true then
  return mp.INFECTED
end
return mp.CLEAN
