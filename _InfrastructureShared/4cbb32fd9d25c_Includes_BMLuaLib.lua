local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = next
  L1_1 = L1_1(L0_0)
  if L1_1 then
    L1_1 = L0_0.command_line
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0.command_line)
      bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
      bm.add_related_file(L1_1)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
