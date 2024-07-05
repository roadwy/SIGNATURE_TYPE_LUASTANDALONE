local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if L1_1 ~= nil then
  L1_1 = "|.exe|.dll|docx|.doc|docm|.dot|dotm|.xls|xlsm|.xlt|xltm|.ppt|pptx|.pps|ppsm|.zip|.pdf|.rtf|"
  pcall(bm_AddRelatedFileFromCommandLine, L0_0.command_line, L1_1, 4, 3)
end
L1_1 = AddResearchData
L1_1(L0_0.ppid, true)
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
