local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.image_path
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "([^\\]+)$"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = "svchost.exe|taskeng.exe|taskhostw.exe"
if L2_2 ~= nil then
  L4_4 = string
  L4_4 = L4_4.find
  L4_4 = L4_4(L5_5, L6_6)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = sysio
L4_4 = L4_4.RegExpandUserKey
L4_4 = L4_4(L5_5)
if L4_4 then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = sysio
    L10_10 = L10_10.RegOpenKey
    L11_11 = L9_9
    L10_10 = L10_10(L11_11)
    if L10_10 then
      L11_11 = sysio
      L11_11 = L11_11.RegEnumValues
      L11_11 = L11_11(L12_12)
      for L15_15, L16_16 in L12_12(L13_13) do
        L17_17 = string
        L17_17 = L17_17.lower
        L17_17 = L17_17(L16_16)
        if L17_17 == "windir" then
          L17_17 = string
          L17_17 = L17_17.lower
          L17_17 = L17_17(sysio.GetRegValueAsString(L10_10, L16_16))
          if string.len(L17_17) > 8 and (string.find(L17_17, "cmd ", 1, true) or string.find(L17_17, "cmd.exe", 1, true) or string.find(L17_17, "powershell", 1, true) or string.find(L17_17, "wscript", 1, true) or string.find(L17_17, "cscript", 1, true) or string.find(L17_17, "schtasks", 1, true) or string.find(L17_17, "mshta", 1, true) or string.find(L17_17, "reg add", 1, true) or string.find(L17_17, "reg.exe add", 1, true) or string.find(L17_17, "regedit.exe", 1, true) or string.find(L17_17, "rundll32.exe", 1, true) or string.find(L17_17, "regsvr32.exe", 1, true) or string.find(L17_17, "bypass", 1, true) or string.find(L17_17, "\\appdata\\roaming\\", 1, true) or string.find(L17_17, "\\appdata\\local\\", 1, true) or string.find(L17_17, "\\users\\public\\", 1, true) or string.find(L17_17, "\\programdata\\", 1, true) or string.find(L17_17, ".bat", 1, true) or string.find(L17_17, ".cmd", 1, true) or string.find(L17_17, ".js", 1, true) or string.find(L17_17, ".vbs", 1, true) or string.find(L17_17, ".wsf", 1, true)) then
            return mp.INFECTED
          end
          if string.len(L17_17) > 16 and (string.find(L17_17, " /c ", 1, true) or string.find(L17_17, " /k ", 1, true)) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
return L5_5
