local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "(.+)\\svchost%.exe")
  L1_1 = MpCommon.PathToWin32Path(L1_1)
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = mp.ContextualExpandEnvironmentVariables(L1_1)
  if L1_1 == nil then
    return mp.CLEAN
  end
  if L1_1:match("\\windows\\system32") or L1_1:match("\\windows\\syswow64") then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
