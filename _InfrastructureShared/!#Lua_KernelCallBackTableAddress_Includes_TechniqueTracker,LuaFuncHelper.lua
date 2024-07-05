local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
function L0_0(A0_13, A1_14)
  local L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21
  L2_15 = {}
  L3_16 = 1
  for L7_20 = 0, A1_14 - 1 do
    L8_21 = mp
    L8_21 = L8_21.readu_u64
    L8_21 = L8_21(A0_13, 8 * L7_20 + 1)
    if L8_21 == 0 then
    elseif mp.bitand(L8_21, -1099511627776) < 139637976727552 then
    else
      L2_15[L3_16] = L8_21
      L3_16 = L3_16 + 1
    end
    if true == false then
      L2_15[1] = 3735928559
      return L2_15
    end
  end
  return L2_15
end
check_KCT_table_x64 = L0_0
function L0_0(A0_22)
  local L1_23, L2_24, L3_25, L5_26, L6_27, L7_28, L8_29
  L1_23 = #A0_22
  L2_24 = {}
  L2_24.min = 1
  L2_24.max = 2
  if L1_23 == 1 then
    L2_24.max = L3_25
    L2_24.min = L3_25
    return L2_24
  end
  if L3_25 > L5_26 then
    L2_24.max = L3_25
    L2_24.min = L3_25
  else
    L2_24.max = L3_25
    L2_24.min = L3_25
  end
  for L7_28 = 3, L1_23 do
    L8_29 = A0_22[L7_28]
    if L8_29 > L2_24.max then
      L8_29 = A0_22[L7_28]
      L2_24.max = L8_29
    else
      L8_29 = A0_22[L7_28]
      if L8_29 < L2_24.min then
        L8_29 = A0_22[L7_28]
        L2_24.min = L8_29
      end
    end
  end
  return L2_24
end
getArrayMinMax = L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "KernelCallBackTableObtained"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = MpCommon
L0_0 = L0_0.GetTickCount64
L0_0 = L0_0()
L1_1 = 0
L2_2 = IsKeyInRollingQueue
L3_3 = "KernelCallBackAddress"
L4_4 = "Recorded_Time"
L5_5 = true
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 then
  L2_2 = tonumber
  L3_3 = GetRollingQueueKeyValue
  L4_4 = "KernelCallBackAddress"
  L5_5 = "Recorded_Time"
  L12_12 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3(L4_4, L5_5))
  L1_1 = L2_2
end
L2_2 = IsKeyInRollingQueue
L3_3 = "KernelCallBackAddress"
L4_4 = "fn_AddressRange_min"
L5_5 = true
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 then
  L2_2 = IsKeyInRollingQueue
  L3_3 = "KernelCallBackAddress"
  L4_4 = "fn_AddressRange_max"
  L5_5 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  if L2_2 and L1_1 ~= 0 and L0_0 > L1_1 and L0_0 > 86400000 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.GetScannedPPID
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetPEBAddress
L3_3 = L3_3()
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetSMSProcArchitecture
L4_4 = L4_4()
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.SMS_PROC_ARCH_X64
if L4_4 ~= L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.ReadProcMem
L6_6 = L3_3 + 88
L7_7 = 8
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.readu_u64
L7_7 = L5_5
L8_8 = 1
L6_6 = L6_6(L7_7, L8_8)
L7_7 = 128
L8_8 = mp
L8_8 = L8_8.ReadProcMem
L9_9 = L6_6
L10_10 = L7_7 * 8
L8_8 = L8_8(L9_9, L10_10)
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = check_KCT_table_x64
L10_10 = L8_8
L11_11 = L7_7
L9_9 = L9_9(L10_10, L11_11)
if L9_9 == nil then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
else
  L10_10 = #L9_9
  if L10_10 == 0 then
    L10_10 = mp
    L10_10 = L10_10.CLEAN
    return L10_10
  else
    L10_10 = L9_9[1]
    if L10_10 == 3735928559 then
      L10_10 = mp
      L10_10 = L10_10.GetProcessCommandLine
      L11_11 = L2_2
      L10_10 = L10_10(L11_11)
      L11_11 = mp
      L11_11 = L11_11.set_mpattribute
      L12_12 = string
      L12_12 = L12_12.format
      L12_12 = L12_12("MpInternal_researchdata=Modified KCT=%s", string.lower(L10_10))
      L11_11(L12_12, L12_12("MpInternal_researchdata=Modified KCT=%s", string.lower(L10_10)))
      L11_11 = mp
      L11_11 = L11_11.set_mpattribute
      L12_12 = "KernelCallBackTableObtained"
      L11_11(L12_12)
      L11_11 = mp
      L11_11 = L11_11.INFECTED
      return L11_11
    else
      L10_10 = getArrayMinMax
      L11_11 = L9_9
      L10_10 = L10_10(L11_11)
      L11_11 = L10_10.min
      L12_12 = L10_10.max
      pcall(MpCommon.RollingQueueErase, "KernelCallBackAddress")
      AppendToRollingQueue("KernelCallBackAddress", "fn_AddressRange_min", L11_11, 31536000)
      AppendToRollingQueue("KernelCallBackAddress", "fn_AddressRange_max", L12_12, 31536000)
      AppendToRollingQueue("KernelCallBackAddress", "Recorded_Time", L0_0, 31536000)
    end
  end
end
L10_10 = mp
L10_10 = L10_10.set_mpattribute
L11_11 = "KernelCallBackTableObtained"
L10_10(L11_11)
L10_10 = mp
L10_10 = L10_10.INFECTED
return L10_10
