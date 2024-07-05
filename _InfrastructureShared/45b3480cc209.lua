local L0_0, L1_1, L2_2
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\magnify.exe"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "Debugger")
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L2_2 = L2_2(L1_1)
    if L2_2 >= 3 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L1_1)
      if string.find(L2_2, "cmd", 1, true) or string.find(L2_2, "msconfig", 1, true) or string.find(L2_2, "taskmgr", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
