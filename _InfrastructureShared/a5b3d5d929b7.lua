local L0_0, L1_1, L2_2
L0_0 = "system32\\shell32.dll"
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L2_2 = "%temp%\\"
L1_1 = L1_1(L2_2)
L2_2 = L0_0
L1_1 = L1_1 .. L2_2
L2_2 = mp
L2_2 = L2_2.ContextualExpandEnvironmentVariables
L2_2 = L2_2("%temp%\\low\\")
L2_2 = L2_2 .. L0_0
if sysio.IsFileExists(L1_1) then
  bm.add_related_file(L1_1)
  mp.ReportLowfi(L1_1 .. "\000", 1695212180)
end
if sysio.IsFileExists(L2_2) then
  bm.add_related_file(L2_2)
  mp.ReportLowfi(L2_2 .. "\000", 1695212180)
end
return mp.INFECTED
