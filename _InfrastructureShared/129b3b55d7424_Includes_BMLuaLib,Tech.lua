local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
for L5_5 = 1, L0_0 do
  if L6_6 == 16385 then
    L7_7 = L6_6
    L7_7 = IsPathIncludedLinuxRansomCheck
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.crc32
      L8_8 = 0
      L9_9 = L6_6
      L10_10 = 1
      L11_11 = #L6_6
      L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
      L1_1[L7_7] = 1
    end
  end
end
for L7_7 = 1, L0_0 do
  L8_8 = sigattr_tail
  L8_8 = L8_8[L7_7]
  L8_8 = L8_8.attribute
  if L8_8 == 16386 then
    L8_8 = sigattr_tail
    L8_8 = L8_8[L7_7]
    L8_8 = L8_8.utf8p2
    L9_9 = L8_8
    L8_8 = L8_8.lower
    L8_8 = L8_8(L9_9)
    L9_9 = sigattr_tail
    L9_9 = L9_9[L7_7]
    L9_9 = L9_9.utf8p1
    L10_10 = L9_9
    L9_9 = L9_9.lower
    L9_9 = L9_9(L10_10)
    L10_10 = mp
    L10_10 = L10_10.crc32
    L11_11 = 0
    L12_12 = L8_8
    L13_13 = 1
    L14_14 = #L8_8
    L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
    L11_11 = mp
    L11_11 = L11_11.crc32
    L12_12 = 0
    L13_13 = L9_9
    L14_14 = 1
    L15_15 = #L9_9
    L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
    L12_12 = L1_1[L11_11]
    if L12_12 == nil then
      L12_12 = L1_1[L10_10]
    elseif L12_12 ~= nil then
      L12_12 = L3_3[L10_10]
      if L12_12 == nil then
        L13_13 = L8_8
        L12_12 = L8_8.match
        L14_14 = "%.[^/%.]+$"
        L12_12 = L12_12(L13_13, L14_14)
        if L12_12 ~= nil then
          L13_13 = mp
          L13_13 = L13_13.GetExtensionClass
          L14_14 = L12_12
          L13_13 = L13_13(L14_14)
          if L13_13 ~= 3 then
            L13_13 = #L8_8
            L14_14 = #L9_9
            if L13_13 < L14_14 then
              L14_14 = L9_9
              L13_13 = L9_9.find
              L15_15 = L8_8
              L16_16 = 1
              L17_17 = true
              L13_13 = L13_13(L14_14, L15_15, L16_16, L17_17)
              if L13_13 == 1 then
                L14_14 = L9_9
                L13_13 = L9_9.byte
                L15_15 = #L8_8
                L15_15 = L15_15 + 1
                L13_13 = L13_13(L14_14, L15_15)
                if L13_13 ~= 58 then
                  L3_3[L10_10] = 1
                  L14_14 = L9_9
                  L13_13 = L9_9.match
                  L15_15 = "%.[^/%.]+$"
                  L13_13 = L13_13(L14_14, L15_15)
                  if L13_13 ~= nil then
                    L14_14 = mp
                    L14_14 = L14_14.GetExtensionClass
                    L15_15 = L13_13
                    L14_14 = L14_14(L15_15)
                    if L14_14 ~= 4 then
                      L14_14 = IsExtensionDatePattern
                      L15_15 = L13_13
                      L14_14 = L14_14(L15_15)
                      if L14_14 == false then
                        L14_14 = string
                        L14_14 = L14_14.sub
                        L15_15 = L9_9
                        L16_16 = #L8_8
                        L16_16 = L16_16 + 1
                        L14_14 = L14_14(L15_15, L16_16)
                        L15_15 = L2_2[L14_14]
                        if L15_15 ~= nil then
                          L15_15 = table
                          L15_15 = L15_15.insert
                          L16_16 = L2_2[L14_14]
                          L17_17 = L7_7
                          L15_15(L16_16, L17_17)
                          L15_15 = L2_2[L14_14]
                          L15_15 = #L15_15
                          if L15_15 >= 5 then
                            L15_15 = bm
                            L15_15 = L15_15.add_related_string
                            L16_16 = "ransom_extension"
                            L17_17 = L14_14
                            L18_18 = bm
                            L18_18 = L18_18.RelatedStringBMReport
                            L15_15(L16_16, L17_17, L18_18)
                            L15_15 = "genh_linux_ransom_meta"
                            L16_16 = {}
                            L17_17 = bm
                            L17_17 = L17_17.get_imagepath
                            L17_17 = L17_17()
                            L18_18 = L17_17
                            L17_17 = L17_17.lower
                            L17_17 = L17_17(L18_18)
                            L18_18 = bm
                            L18_18 = L18_18.get_current_process_startup_info
                            L18_18 = L18_18()
                            if L18_18 ~= nil then
                              L18_18 = L18_18.ppid
                            else
                              L18_18 = "-1"
                            end
                            AppendToRollingQueue(L15_15, "cur_image_path", L17_17)
                            AppendToRollingQueue(L15_15, "proc_info", L18_18)
                            AppendToRollingQueue(L15_15, "appended_ext", L14_14)
                            for _FORV_22_, _FORV_23_ in pairs(L2_2[L14_14]) do
                              bm.add_related_file(sigattr_tail[_FORV_23_].utf8p1)
                              table.insert(L16_16, sigattr_tail[_FORV_23_].utf8p1)
                            end
                            AppendToRollingQueue(L15_15, "renamed_file_path", table.concat(L16_16, ","))
                            addRelatedProcess()
                            reportRelatedBmHits()
                            TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
                            bm.trigger_sig("GenericLinuxRansomware", "Type7")
                            return mp.INFECTED
                          end
                        else
                          L15_15 = {L16_16}
                          L16_16 = L7_7
                          L2_2[L14_14] = L15_15
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
return L4_4
