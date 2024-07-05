local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = bm
L2_2 = L2_2.get_sig_count
L2_2 = L2_2()
for L6_6 = 1, L0_0 do
  L7_7 = sigattr_tail
  L7_7 = L7_7[L6_6]
  L7_7 = L7_7.attribute
  if L7_7 == 16385 then
    L7_7 = sigattr_tail
    L7_7 = L7_7[L6_6]
    L7_7 = L7_7.utf8p1
    L8_8 = L7_7
    L7_7 = L7_7.lower
    L7_7 = L7_7(L8_8)
    L8_8 = mp
    L8_8 = L8_8.crc32
    L9_9 = 0
    L10_10 = L7_7
    L11_11 = 1
    L12_12 = #L7_7
    L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
    L1_1[L8_8] = L6_6
  end
end
L6_6 = {}
L7_7 = {}
L8_8 = {}
L9_9, L10_10, L11_11, L12_12 = nil, nil, nil, nil
L13_13 = ""
L14_14 = false
L15_15 = false
for L19_19 = 1, L0_0 do
  L20_20 = sigattr_tail
  L20_20 = L20_20[L19_19]
  L20_20 = L20_20.attribute
  if L20_20 == 16386 then
    L20_20 = sigattr_tail
    L20_20 = L20_20[L19_19]
    L20_20 = L20_20.utf8p2
    L21_21 = L20_20
    L20_20 = L20_20.lower
    L20_20 = L20_20(L21_21)
    L21_21 = sigattr_tail
    L21_21 = L21_21[L19_19]
    L21_21 = L21_21.utf8p1
    L22_22 = L21_21
    L21_21 = L21_21.lower
    L21_21 = L21_21(L22_22)
    L22_22 = mp
    L22_22 = L22_22.crc32
    L23_23 = 0
    L24_24 = L20_20
    L25_25 = 1
    L26_26 = #L20_20
    L22_22 = L22_22(L23_23, L24_24, L25_25, L26_26)
    L23_23 = mp
    L23_23 = L23_23.crc32
    L24_24 = 0
    L25_25 = L21_21
    L26_26 = 1
    L27_27 = #L21_21
    L23_23 = L23_23(L24_24, L25_25, L26_26, L27_27)
    L24_24 = L1_1[L23_23]
    if L24_24 == nil then
      L24_24 = L1_1[L22_22]
    elseif L24_24 ~= nil then
      L24_24 = L5_5[L22_22]
      if L24_24 == nil then
        L25_25 = L20_20
        L24_24 = L20_20.match
        L26_26 = "%.[^%.]+$"
        L24_24 = L24_24(L25_25, L26_26)
        if L24_24 ~= nil then
          L25_25 = mp
          L25_25 = L25_25.bitand
          L26_26 = mp
          L26_26 = L26_26.GetExtensionClass
          L27_27 = L24_24
          L26_26 = L26_26(L27_27)
          L27_27 = 3
          L25_25 = L25_25(L26_26, L27_27)
          if L25_25 ~= 0 then
            L25_25 = #L20_20
            L26_26 = #L21_21
            if L25_25 < L26_26 then
              L26_26 = L21_21
              L25_25 = L21_21.find
              L27_27 = L20_20
              L28_28 = 1
              L25_25 = L25_25(L26_26, L27_27, L28_28, L29_29)
              if L25_25 == 1 then
                L26_26 = L21_21
                L25_25 = L21_21.byte
                L27_27 = #L20_20
                L27_27 = L27_27 + 1
                L25_25 = L25_25(L26_26, L27_27)
                if L25_25 ~= 58 then
                  L5_5[L22_22] = 1
                  L26_26 = L21_21
                  L25_25 = L21_21.match
                  L27_27 = "%.[^%.]+$"
                  L25_25 = L25_25(L26_26, L27_27)
                  L26_26 = mp
                  L26_26 = L26_26.GetExtensionClass
                  L27_27 = L25_25
                  L26_26 = L26_26(L27_27)
                  if L26_26 ~= 4 then
                    L26_26 = L1_1[L23_23]
                    if L26_26 ~= nil then
                      L26_26 = L1_1[L23_23]
                      L6_6[L19_19] = L26_26
                    else
                      L26_26 = L1_1[L22_22]
                      if L26_26 ~= nil then
                        L26_26 = L1_1[L22_22]
                        L6_6[L19_19] = L26_26
                      end
                    end
                    L26_26 = string
                    L26_26 = L26_26.sub
                    L27_27 = L21_21
                    L28_28 = #L20_20
                    L28_28 = L28_28 + 1
                    L26_26 = L26_26(L27_27, L28_28)
                    L27_27 = L3_3[L26_26]
                    if L27_27 ~= nil then
                      L27_27 = table
                      L27_27 = L27_27.insert
                      L28_28 = L3_3[L26_26]
                      L27_27(L28_28, L29_29)
                    else
                      L27_27 = {L28_28}
                      L28_28 = L19_19
                      L3_3[L26_26] = L27_27
                    end
                    L28_28 = L26_26
                    L27_27 = L26_26.match
                    L27_27 = L27_27(L28_28, L29_29, L30_30, L31_31)
                    if L27_27 ~= nil then
                      L28_28 = L4_4[L27_27]
                      if L28_28 ~= nil then
                        L28_28 = table
                        L28_28 = L28_28.insert
                        L28_28(L29_29, L30_30)
                      else
                        L28_28 = {L29_29}
                        L4_4[L27_27] = L28_28
                      end
                      L28_28 = L4_4[L27_27]
                      L28_28 = #L28_28
                      if L28_28 >= 5 then
                        L28_28 = 0
                        for L32_32, L33_33 in L29_29(L30_30) do
                          L34_34 = L3_3[L32_32]
                          L34_34 = #L34_34
                          if L34_34 == 1 then
                            L28_28 = L28_28 + 1
                          end
                        end
                        if L28_28 >= 5 then
                          L26_26 = L27_27
                          L15_15 = true
                        end
                      end
                    end
                    L28_28 = {}
                    for L32_32, L33_33 in L29_29(L30_30) do
                      L34_34 = table
                      L34_34 = L34_34.insert
                      L35_35 = L28_28
                      L34_34(L35_35, L36_36)
                    end
                    if L29_29 >= 5 then
                      L30_30.count = 0
                      for L34_34, L35_35 in L31_31(L32_32) do
                        for L39_39, L40_40 in L36_36(L37_37) do
                          L45_45 = 4
                          if L42_42 ~= nil then
                            if L43_43 == nil then
                              L30_30[L42_42] = 1
                              L30_30.count = L43_43
                            end
                          end
                          if L43_43 ~= nil and L14_14 == false then
                            if L44_44 > 136 then
                              L45_45 = L43_43
                              if L44_44 ~= nil then
                                L45_45 = #L43_43
                                L45_45 = L45_45 - L44_44
                                if L45_45 > 20 then
                                  L45_45 = {}
                                  for L49_49, L50_50 in L46_46(L47_47, L48_48) do
                                    L45_45[L49_49] = L50_50
                                  end
                                  if L46_46 ~= nil then
                                    if L46_46 ~= nil then
                                      if L46_46 ~= nil then
                                        L9_9 = L45_45.UsrName
                                        L10_10 = L45_45.Domain
                                        L11_11 = L46_46
                                        L12_12 = L46_46
                                        if L46_46 ~= nil and (L13_13 == "" or L13_13 == L46_46) then
                                          L49_49 = {}
                                          L50_50 = sigattr_tail
                                          L50_50 = L50_50[L40_40]
                                          L50_50 = L50_50.utf8p1
                                          L49_49.path = L50_50
                                          L49_49.magic = L42_42
                                          L49_49.fileSize = L41_41
                                          L47_47(L48_48, L49_49)
                                          L13_13 = L46_46
                                        else
                                          L14_14 = true
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
                      L34_34 = L29_29
                      L34_34 = bm
                      L34_34 = L34_34.RelatedStringBMReport
                      L31_31(L32_32, L33_33, L34_34)
                      L34_34 = L28_28
                      L34_34 = bm
                      L34_34 = L34_34.RelatedStringBMReport
                      L31_31(L32_32, L33_33, L34_34)
                      L34_34 = L33_33
                      L34_34 = bm
                      L34_34 = L34_34.get_current_process_startup_info
                      L34_34 = L34_34()
                      L35_35 = ""
                      if L34_34 ~= nil then
                        L35_35 = L34_34.command_line
                        L34_34 = L34_34.ppid
                      else
                        L34_34 = -1
                      end
                      L31_31.cur_image_path = L33_33
                      L31_31.proc_info = L34_34
                      L31_31.appended_ext = L28_28
                      L31_31.magic_mismatch = L29_29
                      L31_31.is_double_ext = L15_15
                      for L40_40, L41_41 in L37_37(L38_38) do
                        for L45_45, L46_46 in L42_42(L43_43) do
                          L49_49 = L47_47
                          L50_50 = "\\[^\\]*$"
                          L49_49 = string
                          L49_49 = L49_49.find
                          L50_50 = L47_47
                          L49_49 = L49_49(L50_50, ".", L48_48, true)
                          if L49_49 ~= nil then
                            L50_50 = string
                            L50_50 = L50_50.sub
                            L50_50 = L50_50(L47_47, L48_48 + 1, L49_49 - 1)
                          end
                          L50_50 = sigattr_tail
                          L50_50 = L50_50[L46_46]
                          L50_50 = string
                          L50_50 = L50_50.find
                          L50_50 = L50_50(L47_47, "\\[^\\]*$")
                          L48_48 = L50_50 or 0
                          L50_50 = string
                          L50_50 = L50_50.find
                          L50_50 = L50_50(L47_47, ".", L48_48, true)
                          L49_49 = L50_50
                          if L49_49 ~= nil then
                            L50_50 = string
                            L50_50 = L50_50.sub
                            L50_50 = L50_50(L47_47, L48_48 + 1, L49_49 - 1)
                          end
                          L50_50 = table
                          L50_50 = L50_50.insert
                          L50_50(L32_32, sigattr_tail[L46_46].utf8p1)
                          L50_50 = table
                          L50_50 = L50_50.insert
                          L50_50(L32_32, sigattr_tail[L46_46].utf8p2)
                        end
                      end
                      L31_31.file_list = L32_32
                      for L42_42, L43_43 in L39_39(L40_40) do
                        if L44_44 ~= nil then
                          L45_45 = L43_43.ppid
                          L44_44(L45_45)
                        end
                      end
                      for L42_42, L43_43 in L39_39(L40_40) do
                        if L44_44 ~= nil then
                          L45_45 = L43_43.ppid
                          L44_44(L45_45)
                          L45_45 = L43_43.ppid
                          L44_44(L45_45, L46_46, L47_47)
                        end
                      end
                      L39_39(L40_40, L41_41, L42_42)
                      L40_40(L41_41, L42_42, L43_43)
                      L40_40(L41_41, L42_42)
                      L40_40()
                      L40_40(L41_41, L42_42)
                      L40_40(L41_41, L42_42, L43_43)
                      L40_40()
                      L40_40()
                      if L14_14 == false then
                        if L40_40 > 0 and L13_13 ~= nil and L13_13 ~= "" then
                          L40_40.Extension = L26_26
                          L40_40.imagePath = L33_33
                          L40_40.commandLine = L35_35
                          L40_40.ppID = L34_34
                          L40_40.UserName = L11_11
                          L40_40.Domain = L12_12
                          L40_40.file_list = L8_8
                          L40_40.Type = "Type2.1"
                          L7_7 = L40_40
                          L41_41(L42_42, L43_43, L44_44)
                          L41_41(L42_42, L43_43)
                          if not L41_41 then
                            L45_45 = L42_42
                            L43_43(L44_44, L45_45, L46_46)
                          end
                          L45_45 = L43_43(L44_44)
                          if L43_43 then
                            L49_49 = L13_13
                            L7_7.ipTypeFlags = L47_47
                          else
                            L49_49 = L44_44
                            L50_50 = bm
                            L50_50 = L50_50.RelatedStringBMReport
                            L47_47(L48_48, L49_49, L50_50)
                          end
                          L49_49 = L13_13
                          L49_49 = {}
                          L49_49.SIG_CONTEXT = "BM"
                          L49_49.CONTEXT_SOURCE = "GenRansom"
                          L49_49.TAG = "NOLOOKUP"
                          L50_50 = safeJsonSerialize
                          L50_50 = L50_50(L7_7)
                          L49_49.data = L50_50
                          if L48_48 then
                            if L48_48 == 2 then
                              if L48_48 then
                                if L48_48 >= 60 then
                                  if L48_48 == "GenRansom" then
                                    L7_7.confidence = L48_48
                                    L7_7.family = L48_48
                                    L49_49 = L47_47.urls
                                    L49_49 = L49_49[L13_13]
                                    L49_49 = L49_49.context
                                    L49_49 = L49_49.action
                                    L48_48.action = L49_49
                                    L49_49 = L47_47.urls
                                    L49_49 = L49_49[L13_13]
                                    L49_49 = L49_49.context
                                    L49_49 = L49_49.action_parameter
                                    L48_48.parameter = L49_49
                                    L49_49 = L47_47.urls
                                    L49_49 = L49_49[L13_13]
                                    L49_49 = L49_49.context
                                    L49_49 = L49_49.action_ttl
                                    L48_48.ttl = L49_49
                                    L7_7.action = L48_48
                                    L7_7.ip = L13_13
                                    L7_7.unscrubbed_username = L9_9
                                    L7_7.unscrubbed_domain = L10_10
                                    L49_49 = bm
                                    L49_49 = L49_49.trigger_sig
                                    L50_50 = "RemoteGenericRansomware:Malware"
                                    L49_49(L50_50, safeJsonSerialize(L7_7))
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                      L40_40(L41_41, L42_42, L43_43)
                      return L40_40
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
return L16_16
