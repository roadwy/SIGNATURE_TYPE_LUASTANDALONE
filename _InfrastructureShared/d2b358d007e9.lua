local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\werfault.exe\\\\debugger", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\osppsvc.exe\\\\debugger", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\sppextcomobj.exe\\\\debugger", 1, true)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil and string.len(L1_1) > 3 then
    L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
    if not sysio.IsFileExists(L1_1) then
      L1_1 = string.lower(bm.get_imagepath())
    end
    if mp.IsKnownFriendlyFile(L1_1, true, false) == true then
      return mp.CLEAN
    end
    if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L1_1) ~= 0 and (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600) > 600) then
      return mp.CLEAN
    end
    L1_1 = string.lower(L1_1)
    if string.find(L1_1, "awdump.exe", 1, true) or string.find(L1_1, "awdumpifeo.exe", 1, true) or string.find(L1_1, "AppDeployToolkit_BlockAppExecutionMessage.vbs", 1, true) then
      return mp.CLEAN
    end
    mp.ReportLowfi(L1_1, 794607441)
    bm.add_related_file(L1_1)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
