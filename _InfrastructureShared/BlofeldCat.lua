local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12
  L1_3 = sysio
  L1_3 = L1_3.RegOpenKey
  L2_4 = A0_2
  L1_3 = L1_3(L2_4)
  L2_4 = 0
  if L1_3 then
    L3_5 = sysio
    L3_5 = L3_5.RegEnumKeys
    L3_5 = L3_5(L4_6)
    for L7_9, L8_10 in L4_6(L5_7) do
      if L8_10 then
        L9_11 = sysio
        L9_11 = L9_11.RegOpenKey
        L10_12 = A0_2
        L10_12 = L10_12 .. "\\\\" .. L8_10
        L9_11 = L9_11(L10_12)
        if L9_11 then
          L10_12 = sysio
          L10_12 = L10_12.GetRegValueAsString
          L10_12 = L10_12(L9_11, "UpgradeData")
          if L10_12 and string.len(L10_12) > 49 then
            MpCommon.SetGlobalMpAttribute("BlofeldCatRegKey")
            MpDetection.ScanResource("regkeyvalue://" .. A0_2 .. "\\" .. L8_10 .. "\\\\UpgradeData")
            MpCommon.DeleteGlobalMpAttribute("BlofeldCatRegKey")
          end
        end
      end
      L2_4 = L2_4 + 1
      if L2_4 == 50 then
        L9_11 = SetLuaInstrLimit
        L10_12 = crypto
        L10_12 = L10_12.shl64
        L10_12 = L10_12(1, 24)
        L9_11(L10_12, L10_12(1, 24))
        L2_4 = 0
      end
    end
  end
end
Infrastructure_ScanBlofeldCatKeyPath = L0_0
function L0_0()
  local L0_13, L1_14, L2_15, L3_16, L4_17, L5_18, L6_19
  L0_13 = Infrastructure_ScanBlofeldCatKeyPath
  L1_14 = "HKLM\\Software\\Microsoft\\DRM"
  L0_13(L1_14)
  L0_13 = SetLuaInstrLimit
  L1_14 = crypto
  L1_14 = L1_14.shl64
  L6_19 = L1_14(L2_15, L3_16)
  L0_13(L1_14, L2_15, L3_16, L4_17, L5_18, L6_19, L1_14(L2_15, L3_16))
  L0_13 = sysio
  L0_13 = L0_13.RegExpandUserKey
  L1_14 = "HKCU\\Software\\Microsoft\\DRM"
  L0_13 = L0_13(L1_14)
  L1_14 = 0
  for L5_18, L6_19 in L2_15(L3_16) do
    Infrastructure_ScanBlofeldCatKeyPath(L6_19)
    L1_14 = L1_14 + 1
    if L1_14 == 8 then
      break
    end
  end
  L5_18 = 24
  L6_19 = L3_16(L4_17, L5_18)
  L2_15(L3_16, L4_17, L5_18, L6_19, L3_16(L4_17, L5_18))
end
Infrastructure_ScanBlofeldCat = L0_0
