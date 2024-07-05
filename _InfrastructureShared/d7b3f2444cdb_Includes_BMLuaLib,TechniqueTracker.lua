local L0_0
if this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
end
function checkTaint()
  local L0_1
  L0_1 = 0
  if mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid) ~= nil then
    L0_1 = GetTechniquesCountForPid(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid)
    if L0_1 > 4 then
      TrackPidAndTechniqueBM(mp.GetParentProcInfo(bm.get_current_process_startup_info().ppid).ppid, "T1083", "Discovery_FileAndDirectoryDiscovery")
      addRelatedProcess()
      reportRelatedBmHits()
      return true
    end
  end
  return false
end
if L0_0 ~= nil then
  if string.find(L0_0, "-perm", 1, true) and (string.match(L0_0, "(%s)[-/](0*)200[07]") or string.match(L0_0, "(%s)-(0*)400[07]") or string.match(L0_0, "(%s)-(0*)6000") or string.match(L0_0, "(%s)-(0*)222") or string.match(L0_0, "(%s)-(0*)0002") or string.find(L0_0, "u=s", 1, true) or string.find(L0_0, "g=s", 1, true) or string.find(L0_0, "-o w", 1, true) or string.find(L0_0, "-o x", 1, true)) then
    if checkTaint() == true then
      return mp.INFECTED
    end
  elseif string.find(L0_0, " -writable ", 1, true) and (string.match(L0_0, "(%s)-type%s+[fd]") or string.find(L0_0, "-not -user", 1, true)) and checkTaint() then
    return mp.INFECTED
  end
end
return mp.CLEAN
