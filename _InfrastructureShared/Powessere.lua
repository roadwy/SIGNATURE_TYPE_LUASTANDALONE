local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11
  L1_3 = sysio
  L1_3 = L1_3.RegOpenKey
  L2_4 = A0_2
  L1_3 = L1_3(L2_4)
  L2_4 = 0
  if L1_3 then
    L3_5 = sysio
    L3_5 = L3_5.RegEnumValues
    L3_5 = L3_5(L4_6)
    for L7_9, L8_10 in L4_6(L5_7) do
      if L8_10 then
        L9_11 = sysio
        L9_11 = L9_11.GetRegValueAsString
        L9_11 = L9_11(L1_3, L8_10)
        if L9_11 ~= nil then
          L9_11 = string.lower(L9_11)
          if string.len(L9_11) > 48 and string.find(L9_11, "%.%.\\") and (string.find(L9_11, "javascript:", 2, true) or string.find(L9_11, "vbscript:", 2, true)) and string.find(L9_11, "runhtmlapplication", 2, true) then
            MpDetection.ReportResource("regkey", A0_2 .. "\\\\" .. L8_10, 277, false)
          end
          if string.match(L9_11, "regsvr32.+/i%:http.+scrobj%.dll") and string.find(L9_11, "/u ", 1, true) and string.find(L9_11, "/s ", 1, true) then
            MpDetection.ReportResource("regkey", A0_2 .. "\\\\" .. L8_10, 805306523, false)
          end
          if string.find(L9_11, "powershell.exe", 1, true) and string.match(L9_11, "iex%s*%(%[text%.encoding%]%:%:ascii%.getstring%(%[convert%]%:%:frombase64string%(%(gp%s*%'hk") then
            MpDetection.ReportResource("regkey", A0_2 .. "\\\\" .. L8_10, 805306523, false)
          end
        end
      end
      L2_4 = L2_4 + 1
      if L2_4 == 50 then
        L9_11 = SetLuaInstrLimit
        L9_11(crypto.shl64(1, 24))
        L2_4 = 0
      end
    end
  end
end
Infrastructure_ScanFileLessMalwareKeyPath = L0_0
function L0_0()
  local L0_12, L1_13, L2_14, L3_15, L4_16, L5_17, L6_18, L7_19, L8_20, L9_21, L10_22, L11_23, L12_24, L13_25, L14_26, L15_27, L16_28, L17_29, L18_30
  L0_12 = sysio
  L0_12 = L0_12.RegExpandUserKey
  L1_13 = "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run"
  L0_12 = L0_12(L1_13)
  L1_13 = 0
  for L5_17, L6_18 in L2_14(L3_15) do
    L7_19 = Infrastructure_ScanFileLessMalwareKeyPath
    L7_19(L8_20)
    L1_13 = L1_13 + 1
    if L1_13 == 8 then
      break
    end
  end
  L2_14(L3_15)
  L5_17 = 24
  L18_30 = L3_15(L4_16, L5_17)
  L2_14(L3_15, L4_16, L5_17, L6_18, L7_19, L8_20, L9_21, L10_22, L11_23, L12_24, L13_25, L14_26, L15_27, L16_28, L17_29, L18_30, L3_15(L4_16, L5_17))
  L5_17 = nil
  L6_18 = 0
  L7_19 = 0
  for L11_23, L12_24 in L8_20(L9_21) do
    L13_25 = sysio
    L13_25 = L13_25.RegOpenKey
    L13_25 = L13_25(L14_26)
    if L4_16 then
      L13_25 = sysio
      L13_25 = L13_25.RegEnumKeys
      L13_25 = L13_25(L14_26)
      if L13_25 then
        for L17_29, L18_30 in L14_26(L15_27) do
          L5_17 = L12_24 .. "\\" .. L18_30 .. "\\LocalServer32"
          Infrastructure_ScanFileLessMalwareKeyPath(L5_17)
          L7_19 = L7_19 + 1
          if L7_19 == 25 then
            SetLuaInstrLimit(crypto.shl64(1, 24))
            L7_19 = 0
          end
        end
      end
    end
    L6_18 = L6_18 + 1
    if L6_18 == 8 then
      break
    end
  end
  L11_23 = 24
  L18_30 = L9_21(L10_22, L11_23)
  L8_20(L9_21, L10_22, L11_23, L12_24, L13_25, L14_26, L15_27, L16_28, L17_29, L18_30, L9_21(L10_22, L11_23))
  L8_20(L9_21)
  L8_20(L9_21)
  L8_20(L9_21)
end
Infrastructure_ScanFileLessMalware = L0_0
