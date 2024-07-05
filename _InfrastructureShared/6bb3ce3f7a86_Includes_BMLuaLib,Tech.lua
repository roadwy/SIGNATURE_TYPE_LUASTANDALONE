local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = "sensitive_cat_redirection"
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = L1_1.ppid
  end
elseif L2_2 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetTacticsTableForPid
L3_3 = L1_1.ppid
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L7_7, "mt2023", 1, true) then
    L3_3 = L3_3 + 1
  end
end
if L3_3 > 2 then
  L7_7 = ""
  L8_8 = ""
  if L4_4 == nil then
    return mp.CLEAN
  end
  if L4_4.scr_parent_image_path ~= nil then
    L7_7 = L4_4.scr_parent_image_path
  end
  if L4_4.scr_parent_process_cmdline ~= nil then
    L8_8 = L4_4.scr_parent_process_cmdline
  end
  bm.add_related_string("scr_image_path", L5_5, bm.RelatedStringBMReport)
  bm.add_related_string("scr_process_cmdline", L6_6, bm.RelatedStringBMReport)
  bm.add_related_string("scr_parent_image_path", L7_7, bm.RelatedStringBMReport)
  bm.add_related_string("scr_parent_process_cmdline", L8_8, bm.RelatedStringBMReport)
  reportRelatedBmHits()
  return mp.INFECTED
end
return L4_4
