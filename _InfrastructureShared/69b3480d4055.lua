local L0_0
if this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
end
if not L0_0 then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() and bm.get_current_process_startup_info().integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
  if string.find(L0_0, "\\opencover.profiler.dll", 1, true) or string.find(L0_0, "mscoree.dll", 1, true) then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L0_0) and not mp.IsKnownFriendlyFile(L0_0, false, false) then
    bm.add_related_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
