if mp.UfsGetMetadataBool("PSScriptWithServiceStopCommand", true) == 0 and mp.UfsGetMetadataBool("PSScriptWithServiceStopCommand", true) == true and mp.UfsGetMetadataBool("PSScriptWithConvertFromB64", true) == 0 and mp.UfsGetMetadataBool("PSScriptWithConvertFromB64", true) == true then
  return mp.INFECTED
end
return mp.CLEAN
