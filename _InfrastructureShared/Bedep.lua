local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12
  L1_3 = {}
  if A0_2 then
    L2_4 = A0_2
    L3_5 = "Software\\Classes\\Drive\\ShellEx\\FolderExtensions"
    L2_4 = L2_4 .. L3_5
    L3_5 = sysio
    L3_5 = L3_5.RegOpenKey
    L4_6 = L2_4
    L3_5 = L3_5(L4_6)
    if L3_5 then
      L4_6 = sysio
      L4_6 = L4_6.RegEnumKeys
      L4_6 = L4_6(L5_7)
      if L4_6 then
        for L8_10, L9_11 in L5_7(L6_8) do
          L10_12 = string
          L10_12 = L10_12.match
          L10_12 = L10_12(L9_11, "^{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$")
          if L10_12 then
            L10_12 = sysio
            L10_12 = L10_12.RegOpenKey
            L10_12 = L10_12(L2_4 .. "\\" .. L9_11)
            if L10_12 and sysio.GetRegValueAsDword(L10_12, "DriveMask") and sysio.GetRegValueAsDword(L10_12, "DriveMask") == 4294967295 then
              table.insert(L1_3, L9_11)
            end
          end
        end
      end
    end
  end
  return L1_3
end
Infrastructure_ScanBedepClsid = L0_0
function L0_0(A0_13, A1_14)
  local L2_15, L3_16
  if A0_13 and A1_14 then
    L2_15 = sysio
    L2_15 = L2_15.RegOpenKey
    L3_16 = A0_13
    L3_16 = L3_16 .. "Software\\Classes\\CLSID\\" .. A1_14 .. "\\InprocServer32"
    L2_15 = L2_15(L3_16)
    if L2_15 then
      L3_16 = sysio
      L3_16 = L3_16.GetRegValueAsString
      L3_16 = L3_16(L2_15, "")
      if sysio.IsFileExists(L3_16) then
        MpDetection.ScanResource("file://" .. L3_16)
        MpCommon.ReportLowfi(L3_16, 2613789282)
      end
    end
  end
end
Infrastructure_ScanBedepFilePathFromReg = L0_0
function L0_0(A0_17)
  local L1_18, L2_19, L3_20, L4_21, L5_22, L6_23, L7_24, L8_25, L9_26, L10_27, L11_28, L12_29, L13_30
  L1_18 = "HKCU"
  L2_19 = {}
  if A0_17 then
    for L7_24, L8_25 in L4_21(L5_22) do
      L2_19 = L9_26
      for L12_29, L13_30 in L9_26(L10_27) do
        Infrastructure_ScanBedepFilePathFromReg(L8_25, L13_30)
      end
    end
  else
    L2_19 = L3_20
    for L6_23, L7_24 in L3_20(L4_21) do
      L8_25 = Infrastructure_ScanBedepFilePathFromReg
      L8_25(L9_26, L10_27)
    end
  end
end
Infrastructure_ScanBedep = L0_0
