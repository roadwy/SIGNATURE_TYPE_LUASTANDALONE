local L1_0
function L1_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8
  L1_2 = sysio
  L1_2 = L1_2.RegOpenKey
  L2_3 = A0_1
  L1_2 = L1_2(L2_3)
  if L1_2 then
    L2_3 = sysio
    L2_3 = L2_3.RegEnumValues
    L2_3 = L2_3(L3_4)
    for L6_7, L7_8 in L3_4(L4_5) do
      if string.match(L7_8, "%a:\\Windows\\System32\\drivers\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.sys") or string.match(L7_8, "%a:\\program files\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x\\") or string.match(L7_8, "%a:\\Windows\\%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.exe") then
        MpDetection.ReportResource("regkeyvalue", A0_1 .. "\\\\" .. L7_8, 805306507, false)
      end
    end
  end
end
Infrastructure_SoctuseerReportPathExclusions = L1_0
