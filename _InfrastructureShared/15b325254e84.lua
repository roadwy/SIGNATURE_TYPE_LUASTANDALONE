local L0_0, L1_1
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\sethc.exe"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L1_1 = L1_1(L0_0, "Debugger")
  if L1_1 ~= nil and string.len(L1_1) > 1 then
    if sysio.IsFileExists(L1_1) then
      mp.ReportLowfi(L1_1, 2782132239)
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
