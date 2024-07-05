if mp.get_mpattribute("RPF:PWS:Win32/Simda.gen!B") and peattributes.executes_from_dynamic_memory then
  mp.changedetectionname(805306411)
  return mp.INFECTED
elseif mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.suspicious_image_version and (peattributes.checks_if_debugged_undocumented or peattributes.pea_dynmem_APIcall) then
  return mp.SUSPICIOUS
end
return mp.CLEAN
