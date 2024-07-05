if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  if isParentPackageManager(mp.GetParentProcInfo().ppid, true) then
    return mp.CLEAN
  end
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.004", "DefenseEvasion_ImpairDefenses_DisableSystemFirewall_ufw_config")
end
AddResearchData("BM", true)
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED
