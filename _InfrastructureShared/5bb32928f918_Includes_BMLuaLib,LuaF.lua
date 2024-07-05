local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = isnull
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = isnull
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.match
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L2_2 = "imagepath:(.*)"
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.match
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p1
L3_3 = "imagepath:(.*)"
L1_1 = L1_1(L2_2, L3_3)
L2_2 = isnull
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = isnull
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = isnull
L5_5 = L2_2
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = isnull
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
elseif L4_4 or L2_2 == L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4, L5_5 = nil, nil
L6_6 = mp
L6_6 = L6_6.GetParentProcInfo
L6_6 = L6_6()
L7_7 = isnull
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = isnull
  L7_7 = L7_7(L8_8)
  if not L7_7 then
    L7_7 = isnull
    L7_7 = L7_7(L8_8)
    if not L7_7 then
      L7_7 = MpCommon
      L7_7 = L7_7.PathToWin32Path
      L7_7 = L7_7(L8_8)
      if not L8_8 and L7_7 == L2_2 then
        L5_5 = L3_3
        L4_4 = L8_8
      elseif not L8_8 and L7_7 == L3_3 then
        L5_5 = L2_2
        L4_4 = L8_8
      end
    end
  end
end
L7_7 = isnull
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = isnull
  L7_7 = L7_7(L8_8)
elseif L7_7 then
  L7_7 = bm
  L7_7 = L7_7.get_process_relationships
  L7_7 = L7_7()
  if not L8_8 then
    for L11_11, L12_12 in L8_8(L9_9) do
      L13_13 = isnull
      L13_13 = L13_13(L12_12.image_path)
      if not L13_13 then
        L13_13 = isnull
        L13_13 = L13_13(L12_12.ppid)
        if not L13_13 then
          L13_13 = isnull
          L13_13 = L13_13(L12_12.reason)
          if not L13_13 then
            L13_13 = L12_12.reason
            if L13_13 == bm.RELATIONSHIP_CREATED then
              L13_13 = MpCommon
              L13_13 = L13_13.PathToWin32Path
              L13_13 = L13_13(L12_12.image_path)
              if not isnull(L13_13) and L13_13 == L2_2 then
                L4_4, L5_5 = L12_12.ppid, L3_3
              elseif not isnull(L13_13) and L13_13 == L3_3 then
                L4_4, L5_5 = L12_12.ppid, L2_2
              end
            end
          end
        end
      end
    end
  end
end
L7_7 = isnull
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = isnull
  L7_7 = L7_7(L8_8)
else
  if L7_7 then
    L7_7 = bm
    L7_7 = L7_7.add_related_string
    L11_11 = L2_2
    L12_12 = L3_3
    L7_7(L8_8, L9_9, L10_10)
    L7_7 = bm
    L7_7 = L7_7.add_related_file
    L7_7(L8_8)
    L7_7 = bm
    L7_7 = L7_7.add_related_file
    L7_7(L8_8)
end
else
  L7_7 = bm
  L7_7 = L7_7.add_related_string
  L11_11 = L4_4
  L12_12 = L5_5
  L7_7(L8_8, L9_9, L10_10)
  L7_7 = bm
  L7_7 = L7_7.add_threat_process
  L7_7(L8_8)
  L7_7 = bm
  L7_7 = L7_7.add_threat_file
  L7_7(L8_8)
  L7_7 = TrackPidAndTechniqueBM
  L7_7(L8_8, L9_9, L10_10)
  L7_7 = TrackPidAndTechniqueBM
  L7_7(L8_8, L9_9, L10_10)
end
L7_7 = bm
L7_7 = L7_7.get_current_process_startup_info
L7_7 = L7_7()
if not L8_8 then
  if not L8_8 then
    L11_11 = "spoofargs_child"
    L8_8(L9_9, L10_10, L11_11)
    L11_11 = "spoofparent_child"
    L8_8(L9_9, L10_10, L11_11)
  end
end
return L8_8
