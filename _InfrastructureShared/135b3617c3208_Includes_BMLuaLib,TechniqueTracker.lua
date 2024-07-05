local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L10_10 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "\\([^\\]+)$"
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {}
L2_2["svchost.exe"] = true
L2_2["lsass.exe"] = true
L2_2["services.exe"] = true
L2_2["connectionclient.exe"] = true
L3_3 = L2_2[L1_1]
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
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
    L3_3 = L4_4.utf8p2
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
      L3_3 = L4_4.utf8p2
    end
  end
end
if L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
  L5_5 = L4_4.find
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = L4_4.find
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = L4_4.find
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.GetExecutablesFromCommandLine
  L5_5 = L5_5(L6_6)
  for L9_9, L10_10 in L6_6(L7_7) do
    L10_10 = mp.ContextualExpandEnvironmentVariables(L10_10)
    if sysio.IsFileExists(L10_10) then
      bm.add_related_file(L10_10)
    end
  end
end
L4_4 = pcall
L5_5 = bm
L5_5 = L5_5.get_current_process_startup_info
L5_5 = L4_4(L5_5)
if L4_4 then
  L9_9 = nil
  L10_10 = 1
  L6_6(L7_7, L8_8, L9_9, L10_10)
end
L9_9 = "ssp_tamper"
L6_6(L7_7, L8_8, L9_9)
L6_6(L7_7, L8_8)
return L6_6
