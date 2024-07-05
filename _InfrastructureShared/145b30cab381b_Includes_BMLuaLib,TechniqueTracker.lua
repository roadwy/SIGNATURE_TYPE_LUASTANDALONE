local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 then
  L2_2 = bm_AddRelatedFileFromCommandLine
  L3_3 = L1_1.command_line
  L4_4, L5_5 = nil, nil
  L6_6 = 1
  L2_2(L3_3, L4_4, L5_5, L6_6)
end
L2_2, L3_3 = nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L2_2 = L4_4.utf8p2
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p1
    L3_3 = L4_4 or ""
  end
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L2_2 = L4_4.utf8p2
      L4_4 = this_sigattrlog
      L4_4 = L4_4[3]
      L4_4 = L4_4.utf8p1
      L3_3 = L4_4 or ""
    end
  end
end
if L2_2 ~= nil and L2_2 ~= "" then
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L2_2
  L4_4 = L4_4(L5_5)
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L3_3
  L5_5 = L5_5(L6_6)
  L6_6 = L4_4.find
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if not L6_6 then
    L6_6 = L5_5.find
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  elseif L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L4_4.find
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L4_4.find
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = mp
  L6_6 = L6_6.GetExecutablesFromCommandLine
  L6_6 = L6_6(L7_7)
  for L10_10, L11_11 in L7_7(L8_8) do
    L11_11 = mp.ContextualExpandEnvironmentVariables(L11_11)
    if sysio.IsFileExists(L11_11) then
      bm.add_threat_file(L11_11)
    end
  end
  L10_10 = "ssp_tamper"
  L7_7(L8_8, L9_9, L10_10)
  return L7_7
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
