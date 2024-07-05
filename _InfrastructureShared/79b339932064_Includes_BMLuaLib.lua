local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p2
    end
  end
end
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "sqlite.dll", 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "axhub.dll", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, ".ocx", 1, true)
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = extractDllForRegproc
L1_1 = L1_1(L0_0)
if L1_1 then
  L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
  if sysio.IsFileExists(L1_1) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L1_1) ~= 0 and (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L1_1) / 10000000 - 11644473600) > 3600) then
    bm.add_related_file(L1_1)
    return mp.INFECTED
  end
end
return mp.CLEAN
