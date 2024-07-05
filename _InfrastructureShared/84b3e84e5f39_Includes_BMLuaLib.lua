local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 6)
  end
end
L1_1 = sms_untrusted_process
L1_1()
L1_1 = mp
L1_1 = L1_1.CLEAN
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L1_1 = reportGenericRansomware(this_sigattrlog[2].utf8p2, true)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 then
  L1_1 = reportGenericRansomware(this_sigattrlog[3].utf8p2, true)
end
if L1_1 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
