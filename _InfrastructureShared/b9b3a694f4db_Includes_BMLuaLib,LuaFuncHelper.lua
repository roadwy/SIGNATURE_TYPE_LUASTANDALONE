local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = versioning
L0_0 = L0_0.IsSeville
L0_0 = L0_0()
if not L0_0 then
  L0_0 = versioning
  L0_0 = L0_0.IsServer
  L0_0 = L0_0()
  if not L0_0 then
    L0_0 = MpCommon
    L0_0 = L0_0.IsSampled
    L1_1 = 11000
    L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6.image_path))
    if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, true, false) and L6_6.ppid ~= nil then
      bm.add_threat_process(L6_6.ppid)
    end
  end
end
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L7_7 = L7_7(MpCommon.PathToWin32Path(L6_6.image_path))
    if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, true, false) and L6_6.ppid ~= nil then
      bm.add_threat_process(L6_6.ppid)
    end
  end
end
if L4_4 ~= nil then
  L5_5 = bm
  L5_5 = L5_5.add_related_string
  L6_6 = "GenRansom_injected"
  L7_7 = safeJsonSerialize
  L7_7 = L7_7(L4_4)
  L5_5(L6_6, L7_7, bm.RelatedStringBMReport)
end
if L3_3 ~= nil then
  L5_5 = bm
  L5_5 = L5_5.add_related_string
  L6_6 = "GenRansom_injector"
  L7_7 = safeJsonSerialize
  L7_7 = L7_7(L3_3)
  L5_5(L6_6, L7_7, bm.RelatedStringBMReport)
end
L5_5 = this_sigattrlog
L5_5 = L5_5[8]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[8]
  L5_5 = L5_5.utf8p2
  if L5_5 then
    L5_5 = reportGenericRansomware
    L6_6 = this_sigattrlog
    L6_6 = L6_6[8]
    L6_6 = L6_6.utf8p2
    L5_5 = L5_5(L6_6)
    L6_6 = mp
    L6_6 = L6_6.INFECTED
    if L5_5 == L6_6 then
      L5_5 = reportTimingData
      L5_5()
      L5_5 = mp
      L5_5 = L5_5.INFECTED
      return L5_5
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
