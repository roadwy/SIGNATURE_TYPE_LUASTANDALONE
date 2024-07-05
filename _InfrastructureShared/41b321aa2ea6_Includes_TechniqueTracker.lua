local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = false
L1_1, L2_2, L3_3, L4_4 = nil, nil, nil, nil
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[1]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = this_sigattrlog
    L6_6 = L6_6[1]
    L6_6 = L6_6.utf8p1
    L5_5 = L5_5(L6_6)
    L4_4 = L5_5
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L4_4
    L6_6 = L5_5(L6_6, L7_7)
    L1_1 = L6_6
    _ = L5_5
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[2]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[2]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = this_sigattrlog
    L6_6 = L6_6[2]
    L6_6 = L6_6.utf8p1
    L5_5 = L5_5(L6_6)
    L6_6 = string
    L6_6 = L6_6.match
    L6_6 = L6_6(L7_7, L8_8)
    L2_2 = L7_7
    _ = L6_6
  end
end
if L1_1 ~= nil and L2_2 ~= nil and L1_1 == L2_2 then
  L0_0 = true
end
L5_5 = this_sigattrlog
L5_5 = L5_5[3]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[3]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = this_sigattrlog
    L6_6 = L6_6[3]
    L6_6 = L6_6.utf8p1
    L5_5 = L5_5(L6_6)
    L6_6 = string
    L6_6 = L6_6.match
    L6_6 = L6_6(L7_7, L8_8)
    L3_3 = L7_7
    _ = L6_6
  end
end
if L1_1 ~= nil and L3_3 ~= nil and L1_1 == L3_3 then
  L0_0 = true
end
if L0_0 == true then
  L5_5 = bm
  L5_5 = L5_5.get_process_relationships
  L6_6 = L5_5()
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = mp
    L12_12 = L12_12.bitand
    L12_12 = L12_12(L11_11.reason_ex, bm.RELATIONSHIP_CREATED)
    if L12_12 == bm.RELATIONSHIP_CREATED and L4_4 == string.lower(MpCommon.PathToWin32Path(L11_11.image_path)) then
      TrackPidAndTechniqueBM(L11_11.ppid, "T1055.002", "processinjection_target_t")
      bm.request_SMS(L11_11.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
    L12_12 = mp.bitand(L11_11.reason_ex, bm.RELATIONSHIP_INJECTION)
    if L12_12 == bm.RELATIONSHIP_INJECTION then
      TrackPidAndTechniqueBM(L11_11.ppid, "T1055.002", "processinjection_target_t")
      bm.request_SMS(L11_11.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
  end
  return L7_7
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
