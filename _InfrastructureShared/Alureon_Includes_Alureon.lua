local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L2_2 = false
L3_3 = false
L4_4 = nil
L5_5 = Kernel
L5_5 = L5_5.GetDriverList
L5_5 = L5_5()
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = StripDriverPrefix
  L12_12 = L9_9
  L11_11 = L11_11(L12_12)
  L12_12 = Kernel
  L12_12 = L12_12.GetModuleForAddress
  L13_13 = L10_10.DriverEntry
  L12_12 = L12_12(L13_13)
  L13_13 = nil
  if L12_12 then
    L13_13 = L14_14
  end
  if L13_13 then
  elseif 0 == L14_14 then
    if L13_13 then
      if L14_14 == ".rsrc" then
        if L2_2 then
          L0_0 = nil
        else
          L2_2 = true
          L0_0 = L11_11
        end
      end
    end
    if L15_15 then
      L17_17 = L15_15.DetectionName
      L18_18 = "/Alureon"
      L19_19 = 1
      L20_20 = true
      if L16_16 then
        L17_17 = L11_11
        L15_15.DetectionInfo = L16_16
        return L15_15
      end
    elseif L12_12 then
      if not L16_16 then
        L4_4 = L11_11
      end
    end
  end
  if L14_14 ~= 0 then
    if L14_14 ~= 0 then
      if L3_3 then
        L1_1 = nil
      else
        L1_1 = L11_11
        L3_3 = true
      end
    end
  end
end
if L6_6 then
  L20_20 = L9_9()
  for L11_11, L12_12 in L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L9_9()) do
    L13_13 = string
    L13_13 = L13_13.lower
    L13_13 = L13_13(L14_14)
    if L13_13 == L14_14 then
      L13_13 = L12_12.ParseDeviceChain
      L13_13 = L13_13()
      for L17_17 in L14_14(L15_15) do
        L18_18 = L17_17.GetDriverObject
        L18_18 = L18_18()
        L19_19 = L18_18.GetIrpAddress
        L20_20 = "IRP_MJ_CREATE"
        L19_19 = L19_19(L20_20)
        L20_20 = Kernel
        L20_20 = L20_20.GetModuleForAddress
        L20_20 = L20_20(L19_19)
        if not L20_20 then
          L20_20 = Kernel
          L20_20 = L20_20.RkPattScan
          L20_20 = L20_20(L19_19)
        end
        L20_20 = L18_18.GetIrpAddress
        L20_20 = L20_20("IRP_MJ_INTERNAL_DEVICE_CONTROL")
      end
    end
  end
end
if L7_7 then
  L11_11 = 1
  L12_12 = true
  if L8_8 then
    L11_11 = 1
    L12_12 = true
    if L8_8 then
      L7_7.DetectionInfo = "Mbr::Alureon"
    else
      if not L8_8 and L0_0 then
      else
      end
      L7_7.DetectionInfo = L8_8
    end
  else
  end
  if L7_7 then
    return L7_7
  end
end
