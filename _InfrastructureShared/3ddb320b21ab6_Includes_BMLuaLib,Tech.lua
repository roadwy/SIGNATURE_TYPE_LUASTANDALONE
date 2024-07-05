local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50
L0_0 = 16385
L1_1 = 16386
L2_2 = mp
L2_2 = L2_2.SIGATTR_LOG_SZ
L3_3 = {}
L4_4 = bm
L4_4 = L4_4.get_sig_count
L4_4 = L4_4()
for L8_8 = 1, L2_2 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == L0_0 then
    L9_9 = sigattr_tail
    L9_9 = L9_9[L8_8]
    L9_9 = L9_9.utf8p1
    L10_10 = L9_9
    L9_9 = L9_9.lower
    L9_9 = L9_9(L10_10)
    L10_10 = mp
    L10_10 = L10_10.crc32
    L11_11 = 0
    L12_12 = L9_9
    L13_13 = 1
    L14_14 = #L9_9
    L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14)
    L3_3[L10_10] = L8_8
  end
end
L8_8 = {}
L9_9 = {}
L10_10 = {}
L11_11, L12_12, L13_13, L14_14 = nil, nil, nil, nil
L15_15 = ""
L16_16 = false
L17_17 = false
for L21_21 = 1, L2_2 do
  L22_22 = sigattr_tail
  L22_22 = L22_22[L21_21]
  L22_22 = L22_22.attribute
  if L22_22 == L1_1 then
    L22_22 = sigattr_tail
    L22_22 = L22_22[L21_21]
    L22_22 = L22_22.utf8p2
    L23_23 = L22_22
    L22_22 = L22_22.lower
    L22_22 = L22_22(L23_23)
    L23_23 = sigattr_tail
    L23_23 = L23_23[L21_21]
    L23_23 = L23_23.utf8p1
    L24_24 = L23_23
    L23_23 = L23_23.lower
    L23_23 = L23_23(L24_24)
    L24_24 = mp
    L24_24 = L24_24.crc32
    L25_25 = 0
    L26_26 = L22_22
    L27_27 = 1
    L28_28 = #L22_22
    L24_24 = L24_24(L25_25, L26_26, L27_27, L28_28)
    L25_25 = mp
    L25_25 = L25_25.crc32
    L26_26 = 0
    L27_27 = L23_23
    L28_28 = 1
    L29_29 = #L23_23
    L25_25 = L25_25(L26_26, L27_27, L28_28, L29_29)
    L26_26 = L3_3[L25_25]
    if L26_26 == nil then
      L26_26 = L3_3[L24_24]
    elseif L26_26 ~= nil then
      L26_26 = L6_6[L24_24]
      if L26_26 == nil then
        L27_27 = L22_22
        L26_26 = L22_22.match
        L28_28 = "%.[^%.]+$"
        L26_26 = L26_26(L27_27, L28_28)
        if L26_26 ~= nil then
          L27_27 = mp
          L27_27 = L27_27.bitand
          L28_28 = mp
          L28_28 = L28_28.GetExtensionClass
          L29_29 = L26_26
          L28_28 = L28_28(L29_29)
          L29_29 = 3
          L27_27 = L27_27(L28_28, L29_29)
          if L27_27 ~= 0 then
            L27_27 = string
            L27_27 = L27_27.match
            L28_28 = L22_22
            L29_29 = "(.-)([^\\]-([^\\%.]+))$"
            L29_29 = L27_27(L28_28, L29_29)
            L30_30 = "."
            L31_31 = L29_29
            L29_29 = L30_30 .. L31_31
            L30_30 = string
            L30_30 = L30_30.match
            L31_31 = L23_23
            L32_32 = "(.-)([^\\]-([^\\%.]+))$"
            L32_32 = L30_30(L31_31, L32_32)
            L33_33 = "."
            L34_34 = L32_32
            L32_32 = L33_33 .. L34_34
            L33_33 = 0
            if L27_27 == L30_30 then
              L35_35 = L28_28
              L34_34 = L28_28.find
              L34_34 = L34_34(L35_35, L36_36, L37_37, L38_38)
              if L34_34 ~= 1 then
                L35_35 = L31_31
                L34_34 = L31_31.find
                L34_34 = L34_34(L35_35, L36_36, L37_37, L38_38)
                if L34_34 ~= 1 then
                  L6_6[L24_24] = 1
                  L34_34 = mp
                  L34_34 = L34_34.GetExtensionClass
                  L35_35 = L32_32
                  L34_34 = L34_34(L35_35)
                  if L34_34 ~= 4 then
                    L34_34 = L3_3[L25_25]
                    if L34_34 ~= nil then
                      L34_34 = L3_3[L25_25]
                      L8_8[L21_21] = L34_34
                    else
                      L34_34 = L3_3[L24_24]
                      if L34_34 ~= nil then
                        L34_34 = L3_3[L24_24]
                        L8_8[L21_21] = L34_34
                      end
                    end
                    L34_34 = L5_5[L32_32]
                    if L34_34 ~= nil then
                      L34_34 = table
                      L34_34 = L34_34.insert
                      L35_35 = L5_5[L32_32]
                      L34_34(L35_35, L36_36)
                    else
                      L34_34 = {L35_35}
                      L35_35 = L21_21
                      L5_5[L32_32] = L34_34
                    end
                    L34_34 = L7_7[L30_30]
                    if L34_34 ~= nil then
                      L34_34 = table
                      L34_34 = L34_34.insert
                      L35_35 = L7_7[L30_30]
                      L34_34(L35_35, L36_36)
                    else
                      L34_34 = {L35_35}
                      L35_35 = L21_21
                      L7_7[L30_30] = L34_34
                      L33_33 = L33_33 + 1
                    end
                    L34_34 = L5_5[L32_32]
                    L34_34 = #L34_34
                    if L34_34 >= 5 or L33_33 >= 20 then
                      L34_34 = false
                      L35_35 = {}
                      L35_35.count = 0
                      for L39_39, L40_40 in L36_36(L37_37) do
                        L41_41 = sysio
                        L41_41 = L41_41.GetFileSize
                        L41_41 = L41_41(L42_42)
                        if L42_42 ~= nil then
                          if L43_43 == nil then
                            L35_35[L42_42] = 1
                            L35_35.count = L43_43
                          end
                        end
                        if L43_43 ~= nil and L16_16 == false then
                          if L44_44 > 136 then
                            if L44_44 ~= nil then
                              if L45_45 > 20 then
                                for L49_49, L50_50 in L46_46(L47_47, L48_48) do
                                  L45_45[L49_49] = L50_50
                                end
                                if L46_46 ~= nil then
                                  if L46_46 ~= nil then
                                    if L46_46 ~= nil then
                                      L11_11 = L45_45.UsrName
                                      L12_12 = L45_45.Domain
                                      L13_13 = L46_46
                                      L14_14 = L46_46
                                      if L46_46 ~= nil and (L15_15 == "" or L15_15 == L46_46) then
                                        L49_49 = {}
                                        L50_50 = sigattr_tail
                                        L50_50 = L50_50[L40_40]
                                        L50_50 = L50_50.utf8p1
                                        L49_49.path = L50_50
                                        L49_49.magic = L42_42
                                        L49_49.fileSize = L41_41
                                        L47_47(L48_48, L49_49)
                                        L15_15 = L46_46
                                      else
                                        L16_16 = true
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                      if L36_36 > 4 then
                        L34_34 = true
                      end
                      L39_39 = L34_34
                      L39_39 = bm
                      L39_39 = L39_39.RelatedStringBMReport
                      L36_36(L37_37, L38_38, L39_39)
                      L39_39 = bm
                      L39_39 = L39_39.RelatedStringBMReport
                      L36_36(L37_37, L38_38, L39_39)
                      L39_39 = L38_38
                      L39_39 = bm
                      L39_39 = L39_39.get_current_process_startup_info
                      L39_39 = L39_39()
                      L40_40 = ""
                      if L39_39 ~= nil then
                        L40_40 = L39_39.command_line
                        L39_39 = L39_39.ppid
                      else
                        L39_39 = -1
                      end
                      L36_36.cur_image_path = L38_38
                      L36_36.proc_info = L39_39
                      L36_36.modd_ext = L32_32
                      L36_36.magic_mismatch = L34_34
                      L36_36.is_double_ext = L17_17
                      L36_36.dir_count = L33_33
                      L41_41 = "FileChain_MainSet:"
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
                          L41_41 = L41_41 .. crypto.CRC32Buffer(-1, L50_50, 0, #L50_50)
                          L41_41 = L41_41 .. ";" .. string.sub(L47_47, L49_49 + 1) .. ";"
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
                          L41_41 = L41_41 .. crypto.CRC32Buffer(-1, L50_50, 0, #L50_50)
                          L41_41 = L41_41 .. ";" .. string.sub(L47_47, L49_49 + 1) .. ";"
                        end
                        L50_50 = table
                        L50_50 = L50_50.insert
                        L50_50(L37_37, sigattr_tail[L46_46].utf8p1)
                        L50_50 = table
                        L50_50 = L50_50.insert
                        L50_50(L37_37, sigattr_tail[L46_46].utf8p2)
                      end
                      L36_36.file_list = L37_37
                      for L47_47, L48_48 in L44_44(L45_45) do
                        L49_49 = L48_48.image_path
                        if L49_49 ~= nil then
                          L49_49 = bm
                          L49_49 = L49_49.add_related_process
                          L50_50 = L48_48.ppid
                          L49_49(L50_50)
                        end
                      end
                      for L47_47, L48_48 in L44_44(L45_45) do
                        L49_49 = L48_48.image_path
                        if L49_49 ~= nil then
                          L49_49 = bm
                          L49_49 = L49_49.add_related_process
                          L50_50 = L48_48.ppid
                          L49_49(L50_50)
                          L49_49 = TrackPidAndTechniqueBM
                          L50_50 = L48_48.ppid
                          L49_49(L50_50, "T1485", "susp_ransomware_childproc_type2")
                        end
                      end
                      L44_44(L45_45, L46_46, L47_47)
                      L45_45(L46_46, L47_47, L48_48)
                      L45_45(L46_46, L47_47)
                      L45_45()
                      L45_45(L46_46, L47_47)
                      L45_45(L46_46, L47_47, L48_48)
                      L45_45()
                      L45_45()
                      if L16_16 == false then
                        if L45_45 > 0 and L15_15 ~= nil and L15_15 ~= "" then
                          L45_45.Extension = L32_32
                          L45_45.imagePath = L38_38
                          L45_45.commandLine = L40_40
                          L45_45.ppID = L39_39
                          L45_45.UserName = L13_13
                          L45_45.Domain = L14_14
                          L45_45.file_list = L10_10
                          L45_45.Type = "Type2.2"
                          L9_9 = L45_45
                          L49_49 = bm
                          L49_49 = L49_49.RelatedStringBMReport
                          L46_46(L47_47, L48_48, L49_49)
                          L46_46(L47_47, L48_48)
                          if not L46_46 then
                            L49_49 = "updateSystemDNSServers_fail"
                            L50_50 = L47_47
                            L48_48(L49_49, L50_50, bm.RelatedStringBMReport)
                          end
                          L49_49 = updateDomainInfo
                          L50_50 = L48_48(L49_49)
                          if L48_48 then
                            L9_9.ipTypeFlags = GetRollingQueueKeyValue("domainInfo", L15_15)
                          else
                            bm.add_related_string("updateDomainInfo_fail", L49_49, bm.RelatedStringBMReport)
                          end
                          if SafeGetUrlReputation({L15_15}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L9_9)
                          }).urls[L15_15] and SafeGetUrlReputation({L15_15}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L9_9)
                          }).urls[L15_15].determination == 2 and SafeGetUrlReputation({L15_15}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L9_9)
                          }).urls[L15_15].confidence and SafeGetUrlReputation({L15_15}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L9_9)
                          }).urls[L15_15].confidence >= 60 and SafeGetUrlReputation({L15_15}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L9_9)
                          }).urls[L15_15].context.Source == "GenRansom" then
                            L9_9.confidence = SafeGetUrlReputation({L15_15}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L9_9)
                            }).urls[L15_15].confidence
                            L9_9.family = SafeGetUrlReputation({L15_15}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L9_9)
                            }).urls[L15_15].context.Family
                            L9_9.action = {
                              action = SafeGetUrlReputation({L15_15}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L9_9)
                              }).urls[L15_15].context.action,
                              parameter = SafeGetUrlReputation({L15_15}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L9_9)
                              }).urls[L15_15].context.action_parameter,
                              ttl = SafeGetUrlReputation({L15_15}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L9_9)
                              }).urls[L15_15].context.action_ttl
                            }
                            L9_9.ip = L15_15
                            L9_9.unscrubbed_username = L11_11
                            L9_9.unscrubbed_domain = L12_12
                            bm.trigger_sig("RemoteGenericRansomware:Malware", safeJsonSerialize(L9_9))
                          end
                        end
                      end
                      L45_45(L46_46, L47_47, L48_48)
                      return L45_45
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
return L18_18
