if mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == 0 and mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == true then
  mp.ReportLowfi(mp.getfilename(), 818474255)
  return mp.INFECTED
end
return mp.CLEAN
