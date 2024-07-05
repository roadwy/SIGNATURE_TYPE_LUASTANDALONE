local L1_0
function L1_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14
  L0_1 = Kernel
  L0_1 = L0_1.GetDiskDevicePathAsString
  L0_1 = L0_1()
  if L0_1 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.lower
  L1_2 = L1_2(L2_3)
  L0_1 = L1_2
  L1_2 = nil
  if L0_1 then
    L13_14 = L3_4()
    for L5_6, L6_7 in L2_3(L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L3_4()) do
      L7_8 = string
      L7_8 = L7_8.lower
      L7_8 = L7_8(L8_9)
      if L7_8 == L0_1 then
        L7_8 = L6_7.ParseDeviceChain
        L7_8 = L7_8()
        for L11_12 in L8_9(L9_10) do
          L12_13 = L11_12.GetDriverObject
          L12_13 = L12_13()
          L13_14 = L12_13.GetIrpAddress
          L13_14 = L13_14("IRP_MJ_INTERNAL_DEVICE_CONTROL")
          if L13_14 == nil then
            return nil
          end
          L1_2 = Kernel.RkPattScan(L13_14)
          if L1_2 and string.find(L1_2.DetectionName, "/Pitou", 1, true) then
            return L1_2
          else
            L1_2 = nil
          end
        end
      end
    end
  end
  return L2_3
end
ScanStorageDeviceStack = L1_0
