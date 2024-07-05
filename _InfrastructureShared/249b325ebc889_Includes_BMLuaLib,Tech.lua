local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L3_3 = L2_2
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = IsExcludedByImagePath
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = bm
L3_3 = L3_3.get_current_process_startup_info
L3_3 = L3_3()
if L3_3 ~= nil then
  L3_3 = L3_3.ppid
else
  L3_3 = "-1"
end
if L4_4 then
  return L4_4
end
for L7_7 = 1, L0_0 do
  if L8_8 == 16385 then
    L9_9 = L8_8
    L9_9 = mp
    L9_9 = L9_9.crc32
    L10_10 = 0
    L11_11 = L8_8
    L12_12 = 1
    L13_13 = #L8_8
    L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
    L1_1[L9_9] = 1
  end
end
for L9_9 = 1, L0_0 do
  L10_10 = sigattr_tail
  L10_10 = L10_10[L9_9]
  L10_10 = L10_10.attribute
  if L10_10 == 16386 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L9_9]
    L10_10 = L10_10.utf8p2
    L11_11 = L10_10
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    L11_11 = sigattr_tail
    L11_11 = L11_11[L9_9]
    L11_11 = L11_11.utf8p1
    L12_12 = L11_11
    L11_11 = L11_11.lower
    L11_11 = L11_11(L12_12)
    L12_12 = mp
    L12_12 = L12_12.crc32
    L13_13 = 0
    L14_14 = L10_10
    L15_15 = 1
    L16_16 = #L10_10
    L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
    L13_13 = mp
    L13_13 = L13_13.crc32
    L14_14 = 0
    L15_15 = L11_11
    L16_16 = 1
    L17_17 = #L11_11
    L13_13 = L13_13(L14_14, L15_15, L16_16, L17_17)
    L14_14 = L1_1[L13_13]
    if L14_14 == nil then
      L14_14 = L1_1[L12_12]
    elseif L14_14 ~= nil then
      L14_14 = L5_5[L12_12]
      if L14_14 == nil then
        L15_15 = L10_10
        L14_14 = L10_10.match
        L16_16 = "%.[^/%.]+$"
        L14_14 = L14_14(L15_15, L16_16)
        if L14_14 ~= nil then
          L15_15 = mp
          L15_15 = L15_15.GetExtensionClass
          L16_16 = L14_14
          L15_15 = L15_15(L16_16)
          if L15_15 ~= 3 then
            L15_15 = #L10_10
            L16_16 = #L11_11
            if L15_15 < L16_16 then
              L16_16 = L11_11
              L15_15 = L11_11.find
              L17_17 = L10_10
              L18_18 = 1
              L15_15 = L15_15(L16_16, L17_17, L18_18, true)
              if L15_15 == 1 then
                L16_16 = L11_11
                L15_15 = L11_11.byte
                L17_17 = #L10_10
                L17_17 = L17_17 + 1
                L15_15 = L15_15(L16_16, L17_17)
                if L15_15 ~= 58 then
                  L5_5[L12_12] = 1
                  L16_16 = L11_11
                  L15_15 = L11_11.match
                  L17_17 = "%.[^/%.]+$"
                  L15_15 = L15_15(L16_16, L17_17)
                  if L15_15 ~= nil then
                    L16_16 = mp
                    L16_16 = L16_16.GetExtensionClass
                    L17_17 = L15_15
                    L16_16 = L16_16(L17_17)
                    if L16_16 ~= 4 then
                      L16_16 = IsExcludedByImagePathFileExtension
                      L17_17 = L2_2
                      L18_18 = L15_15
                      L16_16 = L16_16(L17_17, L18_18)
                      if L16_16 == false then
                        L16_16 = IsExcludedByImagePathFileExtensionRegEx
                        L17_17 = L2_2
                        L18_18 = L15_15
                        L16_16 = L16_16(L17_17, L18_18)
                        if L16_16 == false then
                          L16_16 = IsExcludedByImagePathFileExtensionSuffix
                          L17_17 = L2_2
                          L18_18 = L15_15
                          L16_16 = L16_16(L17_17, L18_18)
                          if L16_16 == false then
                            L16_16 = IsExtensionDatePattern
                            L17_17 = L15_15
                            L16_16 = L16_16(L17_17)
                            if L16_16 == false then
                              L16_16 = string
                              L16_16 = L16_16.sub
                              L17_17 = L11_11
                              L18_18 = #L10_10
                              L18_18 = L18_18 + 1
                              L16_16 = L16_16(L17_17, L18_18)
                              L17_17 = L4_4[L16_16]
                              if L17_17 ~= nil then
                                L17_17 = table
                                L17_17 = L17_17.insert
                                L18_18 = L4_4[L16_16]
                                L17_17(L18_18, L9_9)
                                L17_17 = L4_4[L16_16]
                                L17_17 = #L17_17
                                if L17_17 >= 10 then
                                  L17_17 = bm
                                  L17_17 = L17_17.add_related_string
                                  L18_18 = "ransom_extension"
                                  L17_17(L18_18, L16_16, bm.RelatedStringBMReport)
                                  L17_17 = "genj_linux_ransom_meta"
                                  L18_18 = {}
                                  AppendToRollingQueue(L17_17, "cur_image_path", L2_2)
                                  AppendToRollingQueue(L17_17, "proc_info", L3_3)
                                  AppendToRollingQueue(L17_17, "appended_ext", L16_16)
                                  for _FORV_22_, _FORV_23_ in pairs(L4_4[L16_16]) do
                                    bm.add_related_file(sigattr_tail[_FORV_23_].utf8p1)
                                    table.insert(L18_18, sigattr_tail[_FORV_23_].utf8p1)
                                  end
                                  AppendToRollingQueue(L17_17, "renamed_file_path", table.concat(L18_18, ","))
                                  addRelatedProcess()
                                  reportRelatedBmHits()
                                  TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
                                  return mp.INFECTED
                                end
                              else
                                L17_17 = {L18_18}
                                L18_18 = L9_9
                                L4_4[L16_16] = L17_17
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return L6_6
