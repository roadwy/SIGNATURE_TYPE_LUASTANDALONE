local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16
  L0_2 = Kernel
  L0_2 = L0_2.GetDiskDevicePathAsString
  L0_2 = L0_2()
  L1_3 = nil
  L2_4 = false
  if L0_2 then
    L14_16 = L4_6()
    for L6_8, L7_9 in L3_5(L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16, L4_6()) do
      L8_10 = string
      L8_10 = L8_10.lower
      L8_10 = L8_10(L9_11)
      if L8_10 == L9_11 then
        L8_10 = L7_9.ParseDeviceChain
        L8_10 = L8_10()
        for L12_14 in L9_11(L10_12) do
          L13_15 = L12_14.GetDriverObject
          L13_15 = L13_15()
          L14_16 = L13_15.GetIrpAddress
          L14_16 = L14_16("IRP_MJ_INTERNAL_DEVICE_CONTROL")
          L1_3 = Kernel.RkPattScan(L14_16)
          if L1_3 and string.find(L1_3.DetectionName, "/Rovnix", 1, true) then
            L2_4 = true
            break
          end
        end
        if L2_4 then
          break
        end
      end
    end
  end
  if L2_4 then
    return L1_3
  else
    return L3_5
  end
end
L1_1 = nil
L1_1 = L0_0()
if L1_1 then
  return L1_1
end
L1_1 = Infrastructure_ScanModules64()
if L1_1 then
  return L1_1
end
