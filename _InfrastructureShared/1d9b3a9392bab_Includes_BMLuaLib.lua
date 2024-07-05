local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if L1_1 then
  L1_1 = bm_AddRelatedFileFromCommandLine
  L1_1(L0_0.command_line, nil, nil, 1)
  L1_1 = nil
  if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[5].utf8p2
  end
  if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
    L1_1 = this_sigattrlog[6].utf8p2
  end
  if L1_1 ~= nil then
    bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
  end
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
