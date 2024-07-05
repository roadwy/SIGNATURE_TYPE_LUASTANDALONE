local L0_0, L1_1, L2_2, L3_3, L4_4
L4_4 = 1
while L4_4 <= 5 do
  if L4_4 == 1 then
    L0_0 = mp.GetParentProcInfo()
  else
    L0_0 = mp.GetParentProcInfo(L1_1)
  end
  if L0_0 == nil then
    return mp.CLEAN
  end
  L1_1 = L0_0.ppid
  if L1_1 == nil then
    return mp.CLEAN
  end
  L2_2 = L0_0.image_path
  if L2_2 == nil then
    return mp.CLEAN
  end
  L3_3 = string.lower(string.match(L2_2, "\\([^\\]+)$"))
  if L3_3 == nil or L3_3 == "" then
    return mp.CLEAN
  end
  if L3_3 == "winlogon.exe" then
    return mp.CLEAN
  end
  if mp.IsKnownFriendlyFile(L2_2, true, true) ~= true then
    break
  end
  L4_4 = L4_4 + 1
end
if L4_4 > 5 and mp.IsKnownFriendlyFile(L2_2, true, true) == true then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L2_2, "RunsDestructiveCMDsParent") then
  MpCommon.AppendPersistContext(L2_2, "RunsDestructiveCMDsParent", 0)
end
if not MpCommon.QueryPersistContext(L2_2, "disableCachingQueryAgePrev") then
  MpCommon.AppendPersistContext(L2_2, "disableCachingQueryAgePrev", 0)
end
mp.ReportInternalDetection(L2_2, 1397989066, mp.TYPE_ASYNC_LOWFI)
return mp.INFECTED
