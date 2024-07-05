local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44
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
                    L28_28 = L3_3[L26_26]
                    L28_28 = #L28_28
                    if L28_28 >= 5 then
                      L28_28 = false
                      L29_29.count = 0
                      for L33_33, L34_34 in L30_30(L31_31) do
                        L35_35 = sysio
                        L35_35 = L35_35.GetFileSize
                        L35_35 = L35_35(L36_36)
                        if L36_36 ~= nil then
                          if L37_37 == nil then
                            L29_29[L36_36] = 1
                            L29_29.count = L37_37
                          end
                        end
                        if L37_37 ~= nil and L14_14 == false then
                          if L38_38 > 136 then
                            if L38_38 ~= nil then
                              if L39_39 > 20 then
                                for L43_43, L44_44 in L40_40(L41_41, L42_42) do
                                  L39_39[L43_43] = L44_44
                                end
                                if L40_40 ~= nil then
                                  if L40_40 ~= nil then
                                    if L40_40 ~= nil then
                                      L9_9 = L39_39.UsrName
                                      L10_10 = L39_39.Domain
                                      L11_11 = L40_40
                                      L12_12 = L40_40
                                      if L40_40 ~= nil and (L13_13 == "" or L13_13 == L40_40) then
                                        L43_43 = {}
                                        L44_44 = sigattr_tail
                                        L44_44 = L44_44[L34_34]
                                        L44_44 = L44_44.utf8p1
                                        L43_43.path = L44_44
                                        L43_43.magic = L36_36
                                        L43_43.fileSize = L35_35
                                        L41_41(L42_42, L43_43)
                                        L13_13 = L40_40
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
                      if L30_30 > 4 then
                        L28_28 = true
                      end
                      L33_33 = L28_28
                      L33_33 = bm
                      L33_33 = L33_33.RelatedStringBMReport
                      L30_30(L31_31, L32_32, L33_33)
                      L33_33 = bm
                      L33_33 = L33_33.RelatedStringBMReport
                      L30_30(L31_31, L32_32, L33_33)
                      L33_33 = L32_32
                      L33_33 = bm
                      L33_33 = L33_33.get_current_process_startup_info
                      L33_33 = L33_33()
                      L34_34 = ""
                      if L33_33 ~= nil then
                        L34_34 = L33_33.command_line
                        L33_33 = L33_33.ppid
                      else
                        L33_33 = -1
                      end
                      L30_30.cur_image_path = L32_32
                      L30_30.proc_info = L33_33
                      L30_30.appended_ext = L26_26
                      L30_30.magic_mismatch = L28_28
                      L30_30.is_double_ext = L15_15
                      L35_35 = "FileChain_MainSet:"
                      for L39_39, L40_40 in L36_36(L37_37) do
                        L43_43 = L41_41
                        L44_44 = "\\[^\\]*$"
                        L43_43 = string
                        L43_43 = L43_43.find
                        L44_44 = L41_41
                        L43_43 = L43_43(L44_44, ".", L42_42, true)
                        if L43_43 ~= nil then
                          L44_44 = string
                          L44_44 = L44_44.sub
                          L44_44 = L44_44(L41_41, L42_42 + 1, L43_43 - 1)
                          L35_35 = L35_35 .. crypto.CRC32Buffer(-1, L44_44, 0, #L44_44)
                          L35_35 = L35_35 .. ";" .. string.sub(L41_41, L43_43 + 1) .. ";"
                        end
                        L44_44 = sigattr_tail
                        L44_44 = L44_44[L40_40]
                        L44_44 = string
                        L44_44 = L44_44.find
                        L44_44 = L44_44(L41_41, "\\[^\\]*$")
                        L42_42 = L44_44 or 0
                        L44_44 = string
                        L44_44 = L44_44.find
                        L44_44 = L44_44(L41_41, ".", L42_42, true)
                        L43_43 = L44_44
                        if L43_43 ~= nil then
                          L44_44 = string
                          L44_44 = L44_44.sub
                          L44_44 = L44_44(L41_41, L42_42 + 1, L43_43 - 1)
                          L35_35 = L35_35 .. crypto.CRC32Buffer(-1, L44_44, 0, #L44_44)
                          L35_35 = L35_35 .. ";" .. string.sub(L41_41, L43_43 + 1) .. ";"
                        end
                        L44_44 = table
                        L44_44 = L44_44.insert
                        L44_44(L31_31, sigattr_tail[L40_40].utf8p1)
                        L44_44 = table
                        L44_44 = L44_44.insert
                        L44_44(L31_31, sigattr_tail[L40_40].utf8p2)
                      end
                      L30_30.file_list = L31_31
                      for L41_41, L42_42 in L38_38(L39_39) do
                        L43_43 = L42_42.image_path
                        if L43_43 ~= nil then
                          L43_43 = bm
                          L43_43 = L43_43.add_related_process
                          L44_44 = L42_42.ppid
                          L43_43(L44_44)
                        end
                      end
                      for L41_41, L42_42 in L38_38(L39_39) do
                        L43_43 = L42_42.image_path
                        if L43_43 ~= nil then
                          L43_43 = bm
                          L43_43 = L43_43.add_related_process
                          L44_44 = L42_42.ppid
                          L43_43(L44_44)
                          L43_43 = TrackPidAndTechniqueBM
                          L44_44 = L42_42.ppid
                          L43_43(L44_44, "T1485", "susp_ransomware_childproc_type2")
                        end
                      end
                      L38_38(L39_39, L40_40, L41_41)
                      L39_39(L40_40, L41_41, L42_42)
                      L39_39(L40_40, L41_41)
                      L39_39()
                      L39_39(L40_40, L41_41)
                      L39_39(L40_40, L41_41, L42_42)
                      L39_39()
                      L39_39()
                      if L14_14 == false then
                        if L39_39 > 0 and L13_13 ~= nil and L13_13 ~= "" then
                          L39_39.Extension = L26_26
                          L39_39.imagePath = L32_32
                          L39_39.commandLine = L34_34
                          L39_39.ppID = L33_33
                          L39_39.UserName = L11_11
                          L39_39.Domain = L12_12
                          L39_39.file_list = L8_8
                          L39_39.Type = "Type2"
                          L7_7 = L39_39
                          L43_43 = bm
                          L43_43 = L43_43.RelatedStringBMReport
                          L40_40(L41_41, L42_42, L43_43)
                          L40_40(L41_41, L42_42)
                          if not L40_40 then
                            L43_43 = "updateSystemDNSServers_fail"
                            L44_44 = L41_41
                            L42_42(L43_43, L44_44, bm.RelatedStringBMReport)
                          end
                          L43_43 = updateDomainInfo
                          L44_44 = L42_42(L43_43)
                          if L42_42 then
                            L7_7.ipTypeFlags = GetRollingQueueKeyValue("domainInfo", L13_13)
                          else
                            bm.add_related_string("updateDomainInfo_fail", L43_43, bm.RelatedStringBMReport)
                          end
                          if SafeGetUrlReputation({L13_13}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L7_7)
                          }).urls[L13_13] and SafeGetUrlReputation({L13_13}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L7_7)
                          }).urls[L13_13].determination == 2 and SafeGetUrlReputation({L13_13}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L7_7)
                          }).urls[L13_13].confidence and SafeGetUrlReputation({L13_13}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L7_7)
                          }).urls[L13_13].confidence >= 60 and SafeGetUrlReputation({L13_13}, {
                            SIG_CONTEXT = "BM",
                            CONTEXT_SOURCE = "GenRansom",
                            TAG = "NOLOOKUP",
                            data = safeJsonSerialize(L7_7)
                          }).urls[L13_13].context.Source == "GenRansom" then
                            L7_7.confidence = SafeGetUrlReputation({L13_13}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L7_7)
                            }).urls[L13_13].confidence
                            L7_7.family = SafeGetUrlReputation({L13_13}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L7_7)
                            }).urls[L13_13].context.Family
                            L7_7.action = {
                              action = SafeGetUrlReputation({L13_13}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L7_7)
                              }).urls[L13_13].context.action,
                              parameter = SafeGetUrlReputation({L13_13}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L7_7)
                              }).urls[L13_13].context.action_parameter,
                              ttl = SafeGetUrlReputation({L13_13}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L7_7)
                              }).urls[L13_13].context.action_ttl
                            }
                            L7_7.ip = L13_13
                            L7_7.unscrubbed_username = L9_9
                            L7_7.unscrubbed_domain = L10_10
                            bm.trigger_sig("RemoteGenericRansomware:Malware", safeJsonSerialize(L7_7))
                          end
                        end
                      end
                      L39_39(L40_40, L41_41, L42_42)
                      return L39_39
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
