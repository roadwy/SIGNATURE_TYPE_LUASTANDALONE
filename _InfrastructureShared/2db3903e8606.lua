local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(L6_6.image_path)
  if string.find(L7_7, "perfmon.exe", 1, true) or string.find(L7_7, "mmc.exe", 1, true) or string.find(L7_7, "werfault.exe", 1, true) or string.find(L7_7, "wermgr.exe", 1, true) or string.find(L7_7, "control.exe", 1, true) or string.find(L7_7, "openwith.exe", 1, true) or string.find(L7_7, "iexplore.exe", 1, true) or string.find(L7_7, "msedge.exe", 1, true) or string.find(L7_7, "\\chrome", 1, true) or string.find(L7_7, "\\opera", 1, true) or string.find(L7_7, "browser", 1, true) or string.find(L7_7, "\\program files", 1, true) or string.find(L7_7, "\\tencent", 1, true) or string.find(L7_7, "\\sogou", 1, true) or string.find(L7_7, "\\qq", 1, true) or string.find(L7_7, "\\yandex", 1, true) or string.find(L7_7, "\\360se", 1, true) or string.find(L7_7, "launchwinapp.exe", 1, true) or string.find(L7_7, "sgtool.exe", 1, true) or string.find(L7_7, "\\vivaldi", 1, true) or string.find(L7_7, "\\onedrive", 1, true) or string.find(L7_7, "firefox.exe", 1, true) then
    return mp.CLEAN
  end
  if mp.bitand(L6_6.reason_ex, bm.RELATIONSHIP_CREATED) == bm.RELATIONSHIP_CREATED and MpCommon.GetProcessElevationAndIntegrityLevel(L6_6.ppid).IntegrityLevel == MpCommon.SECURITY_MANDATORY_HIGH_RID then
    bm.add_related_process(L6_6.ppid)
    return mp.INFECTED
  end
end
return L2_2
