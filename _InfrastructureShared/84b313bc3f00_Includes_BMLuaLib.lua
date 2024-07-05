local L0_0
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2, true)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[3].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  if bm.get_current_process_startup_info().command_line then
    bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 4)
  end
  return mp.INFECTED
end
return mp.CLEAN
