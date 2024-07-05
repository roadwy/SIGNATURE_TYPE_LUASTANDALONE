local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L4_4 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\atbroker.exe$"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L2_2 = "%windir%\\system32\\LogonUI.exe"
L1_1 = L1_1(L2_2)
L2_2 = sysio
L2_2 = L2_2.GetProcessFromFileName
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = #L2_2
elseif L3_3 >= 1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.RegOpenKey
L4_4 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\atbroker.exe"
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L4_4 = sysio
  L4_4 = L4_4.GetRegValueAsString
  L4_4 = L4_4(L3_3, "Debugger")
  if L4_4 ~= nil and 1 <= string.len(L4_4) then
    if sysio.IsFileExists(L4_4) then
      mp.ReportLowfi(L4_4, 150658937)
    end
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
