local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15
  if A0_2 == nil then
    return
  end
  L1_3 = Infrastructure_SplitThreatPath
  L2_4 = A0_2
  L4_6 = L1_3(L2_4)
  if L1_3 ~= nil and L2_4 ~= nil and L3_5 ~= nil then
    L5_7 = string
    L5_7 = L5_7.gsub
    L6_8 = L1_3
    L7_9 = "^\\\\%?\\"
    L5_7 = L5_7(L6_8, L7_9, L8_10)
    L1_3 = L5_7
    L5_7 = string
    L5_7 = L5_7.lower
    L6_8 = L1_3
    L5_7 = L5_7(L6_8)
    L1_3 = L5_7
    L5_7 = string
    L5_7 = L5_7.lower
    L6_8 = L3_5
    L5_7 = L5_7(L6_8)
    L3_5 = L5_7
    L5_7 = string
    L5_7 = L5_7.sub
    L6_8 = L1_3
    L7_9 = 2
    L5_7 = L5_7(L6_8, L7_9, L8_10)
    if L5_7 == ":\\program files" then
      L5_7 = string
      L5_7 = L5_7.sub
      L6_8 = L3_5
      L7_9 = 1
      L5_7 = L5_7(L6_8, L7_9, L8_10)
      if L5_7 == "update" then
        L5_7 = string
        L5_7 = L5_7.sub
        L6_8 = L3_5
        L7_9 = -4
        L5_7 = L5_7(L6_8, L7_9)
        if L5_7 == ".exe" then
          L5_7 = string
          L5_7 = L5_7.len
          L6_8 = L3_5
          L5_7 = L5_7(L6_8)
          if L5_7 > 10 then
            L5_7 = string
            L5_7 = L5_7.sub
            L6_8 = L3_5
            L7_9 = 7
            L5_7 = L5_7(L6_8, L7_9, L8_10)
            L6_8 = string
            L6_8 = L6_8.lower
            L7_9 = string
            L7_9 = L7_9.gsub
            L13_15 = L7_9(L8_10, L9_11, L10_12)
            L6_8 = L6_8(L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L7_9(L8_10, L9_11, L10_12))
            if L6_8 == L5_7 then
              L7_9 = string
              L7_9 = L7_9.len
              L7_9 = L7_9(L8_10)
              if L7_9 > 0 and L2_4 ~= nil then
                L7_9 = string
                L7_9 = L7_9.len
                L7_9 = L7_9(L8_10)
                if L7_9 > 0 then
                  L7_9 = sysio
                  L7_9 = L7_9.FindFiles
                  L7_9 = L7_9(L8_10, L9_11, L10_12)
                  for L11_13, L12_14 in L8_10(L9_11) do
                    L13_15 = MpDetection
                    L13_15 = L13_15.ScanResource
                    L13_15("file://" .. L12_14)
                  end
                  for L12_14, L13_15 in L9_11(L10_12) do
                    MpDetection.ScanResource("file://" .. L13_15)
                  end
                  L12_14 = A0_2
                  L13_15 = true
                  L10_12(L11_13, L12_14, L13_15)
                  L12_14 = L2_4
                  L10_12(L11_13, L12_14)
                  L12_14 = L2_4
                  L10_12(L11_13, L12_14)
                  L12_14 = L2_4
                  L10_12(L11_13, L12_14)
                end
              end
            end
          end
        end
      end
    end
  end
end
function L1_1(A0_16)
  local L1_17
  if A0_16 == nil then
    return
  end
  L1_17 = string
  L1_17 = L1_17.gsub
  L1_17 = L1_17(string.lower(A0_16), "^\\\\%?\\", "")
  A0_16 = L1_17
  L1_17 = string
  L1_17 = L1_17.match
  L1_17 = L1_17(A0_16, "%a:\\program files\\[%a%s]+\\uninstaller.exe")
  if not L1_17 then
    L1_17 = string
    L1_17 = L1_17.match
    L1_17 = L1_17(A0_16, "%a:\\programdata\\%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x\\")
    if not L1_17 then
      L1_17 = string
      L1_17 = L1_17.match
      L1_17 = L1_17(A0_16, "%a:\\program files.*\\common files\\%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x\\")
    end
  elseif L1_17 then
    L1_17 = 805306497
    Infrastructure_DetectionReportFolder(L1_17, A0_16, true)
  end
end
if string.find(MpDetection.GetCurrentThreat().Name, "BrowserModifier:Win32/Foxiebro", 1, true) then
  for _FORV_6_, _FORV_7_ in pairs(MpDetection.GetCurrentThreat().Resources) do
    if _FORV_7_.Schema == "file" and crypto.bitand(_FORV_7_.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE then
      L0_0(_FORV_7_.Path)
      L1_1(_FORV_7_.Path)
    end
  end
end
