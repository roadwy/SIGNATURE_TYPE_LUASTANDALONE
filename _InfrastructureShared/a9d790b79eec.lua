local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = sysio
L0_0 = L0_0.RegExpandUserKey
L0_0 = L0_0(L1_1)
if L0_0 then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = sysio
    L6_6 = L6_6.RegOpenKey
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
    if L6_6 then
      L7_7 = sysio
      L7_7 = L7_7.RegEnumValues
      L7_7 = L7_7(L8_8)
      for L11_11, L12_12 in L8_8(L9_9) do
        L13_13 = string
        L13_13 = L13_13.lower
        L13_13 = L13_13(L12_12)
        if L13_13 == "windir" then
          L13_13 = string
          L13_13 = L13_13.lower
          L13_13 = L13_13(sysio.GetRegValueAsString(L6_6, L12_12))
          if string.len(L13_13) > 8 and (string.find(L13_13, "cmd ", 1, true) or string.find(L13_13, "cmd.exe", 1, true) or string.find(L13_13, "powershell", 1, true) or string.find(L13_13, "wscript", 1, true) or string.find(L13_13, "cscript", 1, true) or string.find(L13_13, "schtasks", 1, true) or string.find(L13_13, "mshta", 1, true) or string.find(L13_13, "reg add", 1, true) or string.find(L13_13, "reg.exe add", 1, true) or string.find(L13_13, "regedit.exe", 1, true) or string.find(L13_13, "rundll32.exe", 1, true) or string.find(L13_13, "regsvr32.exe", 1, true) or string.find(L13_13, "bypass", 1, true) or string.find(L13_13, "\\appdata\\roaming\\", 1, true) or string.find(L13_13, "\\appdata\\local\\", 1, true) or string.find(L13_13, "\\users\\public\\", 1, true) or string.find(L13_13, "\\programdata\\", 1, true) or string.find(L13_13, ".bat", 1, true) or string.find(L13_13, ".cmd", 1, true) or string.find(L13_13, ".js", 1, true) or string.find(L13_13, ".vbs", 1, true) or string.find(L13_13, ".wsf", 1, true)) then
            return mp.INFECTED
          end
          if string.len(L13_13) > 16 and (string.find(L13_13, " /c ", 1, true) or string.find(L13_13, " /k ", 1, true)) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
return L1_1
