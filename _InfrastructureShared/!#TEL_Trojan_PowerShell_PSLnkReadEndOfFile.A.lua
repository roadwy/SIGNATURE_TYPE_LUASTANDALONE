if mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == 0 and mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == true and mp.get_mpattribute("SCPT:PSReadEndOfFileSameFolder.A") then
  return mp.INFECTED
end
return mp.CLEAN
