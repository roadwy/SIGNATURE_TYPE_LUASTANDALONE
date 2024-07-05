local L0_0
if this_sigattrlog[8].matched and this_sigattrlog[8].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[8].utf8p2)
elseif this_sigattrlog[9].matched and this_sigattrlog[9].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[9].utf8p2)
elseif this_sigattrlog[10].matched and this_sigattrlog[10].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[10].utf8p2)
elseif this_sigattrlog[11].matched and this_sigattrlog[11].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[11].utf8p2)
elseif this_sigattrlog[12].matched and this_sigattrlog[12].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[12].utf8p2)
elseif this_sigattrlog[13].matched and this_sigattrlog[13].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[13].utf8p2)
elseif this_sigattrlog[14].matched and this_sigattrlog[14].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[14].utf8p2)
elseif this_sigattrlog[15].matched and this_sigattrlog[15].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[15].utf8p2)
end
if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  return mp.CLEAN
end
if L0_0 then
  if this_sigattrlog[9].matched and string.find(L0_0, "copy-as-is", 1, true) and string.find(L0_0, "/usr/share/rear", 1, true) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
