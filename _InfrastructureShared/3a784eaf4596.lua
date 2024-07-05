if peattributes.isdll and peattributes.enable_vmm_grow and mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.dynmem_APIcall and peattributes.suspicious_linker_version then
  return mp.INFECTED
end
return mp.CLEAN
