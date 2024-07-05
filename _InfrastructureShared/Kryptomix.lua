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
      if L8_10 and (L8_10 == "Microsoft Windows Manager" or L8_10 == "Microsoft Windows Driver") then
        L9_11 = string
        L9_11 = L9_11.lower
        L9_11 = L9_11(sysio.GetRegValueAsString(L1_3, L8_10))
        if L9_11 ~= nil and string.len(L9_11) > 16 and string.find(L9_11, "windows\\m-", 2, true) and (string.find(L9_11, "\\winmgr.exe", 1, true) or string.find(L9_11, "\\windrv.exe", 1, true)) then
          MpDetection.ReportResource("regkey", A0_2 .. "\\\\" .. L8_10, 805306681, false)
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
ScanKryptomixKeyPathCheck = L0_0
function L0_0()
  local L0_12, L1_13, L2_14, L3_15, L4_16, L5_17, L6_18
  L0_12 = sysio
  L0_12 = L0_12.RegExpandUserKey
  L1_13 = "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run"
  L0_12 = L0_12(L1_13)
  L1_13 = 0
  for L5_17, L6_18 in L2_14(L3_15) do
    ScanKryptomixKeyPathCheck(L6_18)
    L1_13 = L1_13 + 1
    if L1_13 == 8 then
      break
    end
  end
  L2_14(L3_15)
end
Infrastructure_ScanKryptomixASEPKeyPath = L0_0
