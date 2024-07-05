local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "rundll32", 1, true)
  if L2_2 ~= nil and L1_1 ~= nil then
    L2_2 = extractDllForRegproc
    L2_2 = L2_2(L1_1)
    if L2_2 and checkFileLastWriteTime(L2_2, 600) == false and mp.IsKnownFriendlyFile(L2_2, true, false) == false then
      bm.add_related_file(L2_2)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
