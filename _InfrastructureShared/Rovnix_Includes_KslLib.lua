local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4
  L2_4 = 0
  for _FORV_6_, _FORV_7_ in ipairs(A0_2) do
    if _FORV_7_.BaseDllName == "ntoskrnl.exe" then
      if L2_4 == 0 then
        L1_3 = _FORV_7_
        L2_4 = L2_4 + 1
      elseif _FORV_7_.FullDllName == L1_3.FullDllName and bitand(_FORV_7_.DllBase, 4294967295) ~= bitand(L1_3.DllBase, 4294967295) and _FORV_7_.SizeOfImage ~= L1_3.SizeOfImage then
        return true
      end
    end
  end
  return false
end
Infrastructure_ScanFakeNtModule = L0_0
function L0_0()
  local L0_5, L1_6, L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13, L9_14, L10_15, L11_16, L12_17, L13_18, L14_19, L15_20, L16_21, L17_22, L18_23, L19_24
  L1_6 = Kernel
  L1_6 = L1_6.GetModuleList
  L1_6 = L1_6()
  if L2_7 then
    L0_5 = L2_7
    return L0_5
  end
  for L5_10, L6_11 in L2_7(L3_8) do
    L7_12 = GetPEOffset
    L8_13 = L6_11.DllBase
    L8_13 = L7_12(L8_13)
    if L7_12 then
      L9_14 = GetImageDataDirectory
      L10_15 = L6_11.DllBase
      L11_16 = 4
      L11_16 = L9_14(L10_15, L11_16)
      L12_17 = GetImageDataDirectory
      L13_18 = L6_11.DllBase
      L14_19 = 6
      L14_19 = L12_17(L13_18, L14_19)
      L15_20 = crypto
      L15_20 = L15_20.shr64
      L16_21 = L6_11.DllBase
      L17_22 = 32
      L15_20 = L15_20(L16_21, L17_22)
      if L15_20 >= 4294965248 and L9_14 and L11_16 == 0 and L12_17 and L14_19 < 28 then
        L15_20 = nil
        L16_21 = GetEntryPoint
        L17_22 = L6_11.DllBase
        L17_22 = L16_21(L17_22)
        L15_20 = L17_22
        L7_12 = L16_21
        if L7_12 then
          L16_21 = L15_20 + 14
          L17_22 = Kernel
          L17_22 = L17_22.GetMemoryAsString
          L18_23 = L16_21
          L19_24 = 5
          L17_22 = L17_22(L18_23, L19_24)
          L18_23 = string
          L18_23 = L18_23.byte
          L19_24 = L17_22
          L18_23 = L18_23(L19_24, 1)
          if L18_23 == 233 then
            L18_23 = readu32
            L19_24 = L17_22
            L18_23 = L18_23(L19_24, 1)
            L19_24 = bitand
            L19_24 = L19_24(L18_23, 2147483648)
            if L19_24 == 2147483648 then
              L19_24 = bitor
              L19_24 = L19_24(L18_23, crypto.shl64(4294967295, 32))
              L18_23 = L19_24
            end
            L19_24 = L16_21 + 5
            L19_24 = L19_24 + L18_23
            L0_5 = Kernel.RkPattScan(L19_24)
            if L0_5 and L0_5.DetectionName == "Virus:Win64/Rovnix.gen!A" then
              L0_5.DetectionInfo = "Vbr::Rovnix"
              return L0_5
            else
              L0_5 = nil
            end
          end
        end
      end
    end
  end
end
Infrastructure_ScanModules64 = L0_0
