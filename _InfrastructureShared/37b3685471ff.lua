local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = 0
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = nil
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L2_2()
  for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
    L1_1 = _FORV_8_.image_path
    if string.find(L1_1, "\\WINWORD.EXE") then
      L0_0 = L0_0 + 1
      break
    end
  end
  for _FORV_8_, _FORV_9_ in L5_5(L3_3) do
    if string.find(L4_4, "\\powershell.exe") or string.find(L4_4, "\\cmd.exe") then
      L0_0 = L0_0 + 1
      break
    end
  end
  if L0_0 == 2 then
    return L5_5
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
