local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1))
  if L0_0 ~= nil then
    if string.find(L0_0, "\\dism\\dismcore.dll", 1, true) or string.find(L0_0, "\\dism50x86\\dismcore.dll", 1, true) or string.find(L0_0, "\\tools\\amd64\\servicing\\dismcore.dll", 1, true) or string.find(L0_0, "\\tools\\x86\\servicing\\dismcore.dll", 1, true) or string.find(L0_0, "\\bin\\bin64\\dismcore.dll", 1, true) or string.find(L0_0, "\\dismwin10\\x64\\dismcore.dll", 1, true) or string.find(L0_0, "\\dismwin7\\x64\\dismcore.dll", 1, true) or string.find(L0_0, "\\x64\\dism10\\dismcore.dll", 1, true) or string.find(L0_0, "\\x86\\dism10\\dismcore.dll", 1, true) then
      return mp.CLEAN
    end
    if sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L0_0) ~= 0 and (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L0_0) / 10000000 - 11644473600) > 600) then
      return mp.CLEAN
    end
  end
  bm.add_related_file(L0_0)
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
