local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
function L0_0(A0_12, A1_13)
  return (string.format("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", A0_12[A1_13 + 3], A0_12[A1_13 + 2], A0_12[A1_13 + 1], A0_12[A1_13], A0_12[A1_13 + 5], A0_12[A1_13 + 4], A0_12[A1_13 + 7], A0_12[A1_13 + 6], A0_12[A1_13 + 8], A0_12[A1_13 + 9], A0_12[A1_13 + 10], A0_12[A1_13 + 11], A0_12[A1_13 + 12], A0_12[A1_13 + 13], A0_12[A1_13 + 14], A0_12[A1_13 + 15]))
end
ToGUID = L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
L2_2 = L1_1(L2_2, L3_3)
if L2_2 ~= "VSSAMSI" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L4_4 = "MpVssAmsiScan"
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = headerpage
L6_6 = 5
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readu_u64
L6_6 = headerpage
L7_7 = 9
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = headerpage
L8_8 = 17
L6_6 = L6_6(L7_7, L8_8)
L7_7 = mp
L7_7 = L7_7.readu_u64
L8_8 = headerpage
L9_9 = 21
L7_7 = L7_7(L8_8, L9_9)
if L3_3 ~= 0 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattributeex
  L9_9 = "VSSAMSI_Version"
  L10_10 = L3_3
  L8_8(L9_9, L10_10)
end
if L5_5 ~= 0 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattributeex
  L9_9 = "VSSAMSI_ProcessStartKey"
  L10_10 = L5_5
  L8_8(L9_9, L10_10)
end
if L6_6 ~= 0 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattributeex
  L9_9 = "VSSAMSI_CallerPID"
  L10_10 = L6_6
  L8_8(L9_9, L10_10)
end
if L7_7 ~= 0 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattributeex
  L9_9 = "VSSAMSI_ProcessStartTime"
  L10_10 = L7_7
  L8_8(L9_9, L10_10)
end
if L4_4 == 0 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "VSSAMSI_Shadow_Delete"
  L8_8(L9_9)
  L8_8 = ToGUID
  L9_9 = headerpage
  L10_10 = 29
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = mp
  L9_9 = L9_9.readu_u32
  L10_10 = headerpage
  L11_11 = 45
  L9_9 = L9_9(L10_10, L11_11)
  L10_10 = mp
  L10_10 = L10_10.readu_u32
  L11_11 = headerpage
  L10_10 = L10_10(L11_11, 49)
  if L8_8 ~= 0 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_ID:" .. L8_8)
  end
  if L9_9 == 0 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_Unknown")
  elseif L9_9 == 1 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_None")
  elseif L9_9 == 2 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_SnapshotSet")
  elseif L9_9 == 3 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_Snapshot")
  elseif L9_9 == 4 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_Provider")
  else
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_Object_Reserved")
  end
  if L10_10 == 1 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11("VSSAMSI_Delete_ForceDelete")
  end
elseif L4_4 == 1 then
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L9_9 = "VSSAMSI_Shadow_Resize"
  L8_8(L9_9)
  L8_8 = mp
  L8_8 = L8_8.readu_u64
  L9_9 = headerpage
  L10_10 = 29
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = mp
  L9_9 = L9_9.readu_u32
  L10_10 = headerpage
  L11_11 = 37
  L9_9 = L9_9(L10_10, L11_11)
  if L8_8 ~= 0 then
    L10_10 = mp
    L10_10 = L10_10.set_mpattributeex
    L11_11 = "VSSAMSI_Resize_DiffAreaSize"
    L10_10(L11_11, L8_8)
  else
    L10_10 = mp
    L10_10 = L10_10.set_mpattribute
    L11_11 = "VSSAMSI_Resize_DiffAreaSizeZero"
    L10_10(L11_11)
  end
  L10_10, L11_11 = nil, nil
  if L9_9 == 8 then
    L10_10 = mp.readu_u32(headerpage, 41)
    L11_11 = mp.readu_u32(headerpage, 49)
    if L10_10 == L11_11 then
      mp.set_mpattribute("VSSAMSI_Resize_SameVolume")
    else
      mp.set_mpattribute("VSSAMSI_Resize_DifferentVolume")
    end
  else
    mp.set_mpattribute("VSSAMSI_Resize_NotNormalToFromVolume")
  end
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
