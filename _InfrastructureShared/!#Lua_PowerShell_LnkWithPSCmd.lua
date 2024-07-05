if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):match("anaconda powershell prompt.+%.lnk") then
  mp.set_mpattribute("Lua:ExcludeAnacondaPS")
end
if mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == 0 and mp.UfsGetMetadataBool("LnkWithPowerShellCmd", true) == true then
  if mp.get_mpattribute("AGGR:PowerShell/EncodedCommand") or mp.get_mpattribute("AGGR:PowerShell/EncodedArgs") then
    mp.set_mpattribute("Lua:LnkFileWithEncodedPSCmd")
  end
  if mp.get_mpattribute("AGGR:PowerShell/Hidden") then
    mp.set_mpattribute("Lua:LnkFileWithHiddenPSCmd")
  end
  if mp.get_mpattribute("AGGR:PowerShell/ExecutionPolicyBypass") or mp.get_mpattribute("AGGR:PowerShell/ExecutionPolicyUnrestricted") then
    mp.set_mpattribute("Lua:LnkFileWithExPolicyBypassedPSCmd")
  end
end
return mp.CLEAN
