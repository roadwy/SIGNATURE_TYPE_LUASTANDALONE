local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12
  L1_3 = false
  L2_4 = nil
  L3_5 = sysio
  L3_5 = L3_5.RegOpenKey
  L4_6 = A0_2
  L3_5 = L3_5(L4_6)
  if L3_5 then
    L4_6 = sysio
    L4_6 = L4_6.RegEnumValues
    L4_6 = L4_6(L5_7)
    for L8_10, L9_11 in L5_7(L6_8) do
      L10_12 = string
      L10_12 = L10_12.lower
      L10_12 = L10_12(L9_11)
      if L10_12:find("^.:\\users\\ms.default\\") or L10_12:find("^.:\\documents and settings\\ms.default\\") or L10_12:find("^.:\\users\\msuser.default\\") or L10_12:find("^.:\\documents and settings\\msuser.default\\") or L10_12:find("^.:\\users\\soeasyhelper\\") or L10_12:find("^.:\\users\\undp\\") or L10_12:find("^.:\\documents and settings\\undp\\") or L10_12:find("^.:\\program files\\undp\\") or L10_12:find("^.:\\program files (x86)\\undp\\") or L10_12:find("^.:\\users\\udpdp\\") or L10_12:find("^.:\\documents and settings\\udpdp\\") or L10_12:find("^.:\\program files\\udpdp\\") or L10_12:find("^.:\\program files (x86)\\udpdp\\") or L10_12:find("^.:\\program files\\ms.default\\") or L10_12:find("^.:\\program files\\msuser.default\\") or L10_12:find("^.:\\program files (x86)\\ms.default\\") or L10_12:find("^.:\\program files (x86)\\msuser.default\\") then
        MpDetection.ReportResource("regkeyvalue", A0_2 .. "\\\\" .. L9_11, 805306490, false)
      end
      if string.len(L9_11) > 1 then
        MpDetection.ScanResource("regkeyvalue://" .. A0_2 .. "\\\\" .. L9_11)
      end
      if not L1_3 and string.sub(L10_12, -1) == "\\" and string.sub(L10_12, -2) ~= ":\\" then
        L1_3 = true
        L2_4 = L9_11
      end
    end
    if L1_3 then
      for L8_10, L9_11 in L5_7(L6_8) do
        L10_12 = string
        L10_12 = L10_12.lower
        L10_12 = L10_12(L9_11)
        if L10_12 == string.lower(string.sub(L2_4, 1, 1)) .. ":\\" then
          MpDetection.ReportResource("regkeyvalue", A0_2 .. "\\\\" .. L2_4, 805306490, false)
          break
        end
      end
    end
  end
end
Infrastructure_ScanSuweezy = L0_0
function L0_0(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23
  L1_14 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths"
  L2_15 = sysio
  L2_15 = L2_15.RegOpenKey
  L3_16 = L1_14
  L2_15 = L2_15(L3_16)
  if L2_15 then
    L3_16 = sysio
    L3_16 = L3_16.RegEnumValues
    L3_16 = L3_16(L4_17)
    for L7_20, L8_21 in L4_17(L5_18) do
      L9_22 = string
      L9_22 = L9_22.sub
      L10_23 = L8_21
      L9_22 = L9_22(L10_23, -1)
      if L9_22 == "\\" then
        L9_22 = MpDetection
        L9_22 = L9_22.ReportResource
        L10_23 = "regkeyvalue"
        L9_22(L10_23, L1_14 .. "\\\\" .. L8_21, A0_13, false)
      end
    end
  end
  L3_16 = "HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths"
  if L4_17 then
    for L9_22, L10_23 in L6_19(L7_20) do
      if string.sub(L10_23, -1) == "\\" then
        MpDetection.ReportResource("regkeyvalue", L3_16 .. "\\\\" .. L10_23, A0_13, false)
      end
    end
  end
end
SuweezyReportExclusionLatents = L0_0
