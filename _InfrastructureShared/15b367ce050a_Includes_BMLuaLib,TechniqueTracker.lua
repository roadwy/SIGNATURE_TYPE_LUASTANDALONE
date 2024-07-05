local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if L1_1 ~= nil then
  bm_AddRelatedFileFromCommandLine(L1_1)
end
sms_untrusted_process()
add_parents()
return mp.INFECTED
