local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
function L0_0(A0_19, A1_20, A2_21)
  local L3_22
  if A0_19 ~= nil and A1_20 ~= nil then
    L3_22 = Infrastructure_GetFilePathFromGUID
    L3_22 = L3_22(A0_19)
    if L3_22 ~= nil and Infrastructure_SplitThreatPath(L3_22) == A1_20 and Infrastructure_SplitThreatPath(L3_22) == "dll" then
      Infrastructure_DetectionReportBHOByCLSID(A2_21, A0_19)
      Infrastructure_ReportCLSID(A2_21, A0_19)
      Infrastructure_ReportIEExtensionsByClsid(A2_21, A0_19)
    end
  end
end
ReportCLSIDbyAppDir = L0_0
L0_0 = MpDetection
L0_0 = L0_0.GetCurrentThreat
L0_0 = L0_0()
if L1_1 == "BrowserModifier:Win32/Xider" then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = L5_5.Schema
    if L6_6 == "file" then
      L6_6 = crypto
      L6_6 = L6_6.bitand
      L7_7 = L5_5.Type
      L8_8 = MpCommon
      L8_8 = L8_8.MPRESOURCE_TYPE_CONCRETE
      L6_6 = L6_6(L7_7, L8_8)
      L7_7 = MpCommon
      L7_7 = L7_7.MPRESOURCE_TYPE_CONCRETE
      if L6_6 == L7_7 then
        L6_6 = Infrastructure_SplitThreatPath
        L7_7 = L5_5.Path
        L9_9 = L6_6(L7_7)
        L11_11 = L6_6
        L10_10 = L6_6.find
        L12_12 = ":\\program files"
        L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
        if not L10_10 then
          L11_11 = L6_6
          L10_10 = L6_6.find
          L12_12 = "\\appdata\\local\\"
          L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
        elseif L10_10 and L9_9 == "exe" then
          L10_10 = string
          L10_10 = L10_10.len
          L11_11 = L7_7
          L10_10 = L10_10(L11_11)
          if L10_10 > 3 then
            L10_10 = string
            L10_10 = L10_10.sub
            L11_11 = L8_8
            L12_12 = -12
            L10_10 = L10_10(L11_11, L12_12)
            if L10_10 ~= "-enabler.exe" then
              L10_10 = string
              L10_10 = L10_10.sub
              L11_11 = L8_8
              L12_12 = -6
              L10_10 = L10_10(L11_11, L12_12)
              if L10_10 ~= "-2.exe" then
                L10_10 = string
                L10_10 = L10_10.sub
                L11_11 = L8_8
                L12_12 = -9
                L10_10 = L10_10(L11_11, L12_12)
              end
            elseif L10_10 == "utils.exe" then
              L10_10 = 536871282
              L11_11 = Infrastructure_DetectionReportFolder
              L12_12 = L10_10
              L11_11(L12_12, L13_13, L14_14)
              L11_11 = Infrastructure_ScanTaskschedulerResources
              L11_11()
              L12_12 = L7_7
              L11_11 = L7_7.gsub
              L11_11 = L11_11(L12_12, L13_13, L14_14)
              L12_12 = Infrastructure_HKCUExpandSpecialPath
              L12_12 = L12_12(L13_13)
              for L16_16, L17_17 in L13_13(L14_14) do
                L18_18 = L17_17
                L18_18 = L18_18 .. "\\" .. L11_11 .. "\\"
                if sysio.IsFileExists(L18_18 .. "Chrome\\" .. L11_11 .. ".crx") then
                  Infrastructure_DetectionReportFolder(L10_10, L18_18, true)
                end
              end
              if L13_13 == "215 Apps" then
                L13_13(L14_14, L15_15)
              elseif L13_13 ~= nil then
                if L14_14 >= 1 then
                  L16_16 = L11_11
                  L14_14(L15_15, L16_16)
                end
              end
              L16_16 = L10_10
              L13_13(L14_14, L15_15, L16_16)
              L16_16 = L10_10
              L13_13(L14_14, L15_15, L16_16)
              L16_16 = L10_10
              L13_13(L14_14, L15_15, L16_16)
              L16_16 = L10_10
              L13_13(L14_14, L15_15, L16_16)
            end
          end
        end
      end
    end
  end
end
