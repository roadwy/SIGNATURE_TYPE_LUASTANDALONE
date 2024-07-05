local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.ppid
L0_0 = L1_1 or -1
L1_1 = "genb_ransom_meta_"
L2_2 = L0_0
L1_1 = L1_1 .. L2_2
L2_2 = MpCommon
L2_2 = L2_2.RollingQueueCount
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= nil and L2_2 >= 25 and L2_2 <= 100 then
  L3_3 = GetRollingQueue
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = type
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
  elseif L4_4 ~= "table" then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = {}
  L5_5 = nil
  L6_6 = ""
  L7_7 = ""
  L8_8 = {}
  L9_9 = 0
  L10_10 = {}
  L11_11 = 0
  L12_12 = 0
  L13_13 = {}
  L14_14 = 0
  L15_15 = 0
  L16_16 = ""
  for _FORV_21_, _FORV_22_ in ipairs(L3_3) do
    L5_5 = explode(_FORV_22_.value, "|")
    table.insert(L4_4, {
      Extension = L5_5[1],
      NewFileName = L5_5[2],
      OldFileName = L5_5[3],
      FileType = L5_5[4],
      FileSize = L5_5[5],
      MagicByte = L5_5[6],
      Entropy = L5_5[7]
    })
    if L10_10[L5_5[1]] ~= 1 then
      L11_11 = L11_11 + 1
      L10_10[L5_5[1]] = 1
    end
    L6_6 = string.match(L5_5[2], "(.*[/\\])")
    L7_7 = mp.crc32(0, L6_6, 1, #L6_6)
    if L8_8[L7_7] ~= 1 then
      L9_9 = L9_9 + 1
      L8_8[L7_7] = 1
    end
    L16_16 = string.match(L5_5[3], "(.*[/\\])")
    if L5_5[4] == "Unknown" then
      L12_12 = L12_12 + 1
    end
    if L13_13[L5_5[6]] ~= 1 then
      L14_14 = L14_14 + 1
      L13_13[L5_5[6]] = 1
    end
    if 7 <= L5_5[7] then
      L15_15 = L15_15 + 1
    end
  end
  bm.add_related_string("GenBRollingQueueData", safeJsonSerialize(L4_4), bm.RelatedStringBMReport)
  if 0 + 1 + 1 + 1 + 1 + 1 + 1 >= 4 then
    reportSessionInformationInclusive()
    sms_untrusted_process()
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
