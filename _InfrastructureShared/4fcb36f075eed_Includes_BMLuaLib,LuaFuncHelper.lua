local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[9]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[9]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 then
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  L2_2 = isnull
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L2_2 = pcall
    L3_3 = bm
    L3_3 = L3_3.GetModAddress
    L4_4 = L1_1.ppid
    L5_5 = "amsi.dll"
    L3_3 = L2_2(L3_3, L4_4, L5_5)
    if L2_2 then
      L4_4 = isnull
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
    elseif L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = pcall
    L5_5 = bm
    L5_5 = L5_5.GetProcAddress
    L6_6 = L1_1.ppid
    L5_5 = L4_4(L5_5, L6_6, "amsi.dll", "amsiscanbuffer")
    if L4_4 then
      L6_6 = isnull
      L6_6 = L6_6(L5_5)
    elseif L6_6 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.lower
    L6_6 = L6_6(L1_1.command_line)
    bm_AddRelatedFileFromCommandLine(L6_6, nil, nil, 1)
    bm.add_related_string("Sus cmdline: ", L6_6, bm.RelatedStringBMReport)
    bm.add_related_string("Sus Address: ", L3_3, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
