if mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.dynmem_reads_vdll_code and peattributes.checks_teb_lasterror then
  return mp.SUSPICIOUS
end
return mp.CLEAN
