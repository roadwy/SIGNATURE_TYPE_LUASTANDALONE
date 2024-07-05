local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = {}
L4_4 = {}
L5_5 = {}
L6_6 = {}
L7_7 = {}
L8_8 = {}
L9_9 = {}
L10_10, L11_11, L12_12, L13_13 = nil, nil, nil, nil
L14_14 = ""
L15_15 = false
L16_16 = 0
L17_17 = 0
L18_18 = bm
L18_18 = L18_18.get_sig_count
L18_18 = L18_18()
for L22_22 = 1, L0_0 do
  L23_23 = sigattr_tail
  L23_23 = L23_23[L22_22]
  L23_23 = L23_23.attribute
  if L23_23 == 16384 then
    L24_24 = sigattr_tail
    L24_24 = L24_24[L22_22]
    L24_24 = L24_24.utf8p1
    L25_25 = L24_24
    L24_24 = L24_24.lower
    L24_24 = L24_24(L25_25)
    L26_26 = L24_24
    L25_25 = L24_24.match
    L27_27 = "%.[^%.]+$"
    L25_25 = L25_25(L26_26, L27_27)
    if L25_25 ~= nil then
      L26_26 = mp
      L26_26 = L26_26.GetExtensionClass
      L27_27 = L25_25
      L26_26 = L26_26(L27_27)
      if L26_26 ~= 4 then
        L26_26 = mp
        L26_26 = L26_26.crc32
        L27_27 = 0
        L28_28 = L24_24
        L29_29 = 1
        L30_30 = #L24_24
        L26_26 = L26_26(L27_27, L28_28, L29_29, L30_30)
        L27_27 = L1_1[L26_26]
        if L27_27 ~= nil then
          L27_27 = table
          L27_27 = L27_27.insert
          L28_28 = L1_1[L26_26]
          L29_29 = L22_22
          L27_27(L28_28, L29_29)
        else
          L27_27 = {L28_28}
          L28_28 = L22_22
          L1_1[L26_26] = L27_27
          L17_17 = L17_17 + 1
        end
      end
    end
  end
end
if L17_17 < 5 then
  return L19_19
end
for L22_22 = 1, L0_0 do
  L23_23 = sigattr_tail
  L23_23 = L23_23[L22_22]
  L23_23 = L23_23.attribute
  if L23_23 == 16389 then
    L24_24 = sigattr_tail
    L24_24 = L24_24[L22_22]
    L24_24 = L24_24.utf8p2
    if L24_24 == "ATTR_c09458eb" then
      L24_24 = sigattr_tail
      L24_24 = L24_24[L22_22]
      L24_24 = L24_24.utf8p1
      L25_25 = L24_24
      L24_24 = L24_24.lower
      L24_24 = L24_24(L25_25)
      L25_25 = mp
      L25_25 = L25_25.crc32
      L26_26 = 0
      L27_27 = L24_24
      L28_28 = 1
      L29_29 = #L24_24
      L25_25 = L25_25(L26_26, L27_27, L28_28, L29_29)
      L26_26 = L3_3[L25_25]
      if L26_26 ~= nil then
        L26_26 = table
        L26_26 = L26_26.insert
        L27_27 = L3_3[L25_25]
        L28_28 = L22_22
        L26_26(L27_27, L28_28)
      else
        L26_26 = {L27_27}
        L27_27 = L22_22
        L3_3[L25_25] = L26_26
      end
      L26_26 = L1_1[L25_25]
      if L26_26 ~= nil then
        L26_26 = string
        L26_26 = L26_26.find
        L27_27 = L24_24
        L28_28 = "\\[^\\]*$"
        L26_26 = L26_26(L27_27, L28_28)
        L26_26 = L26_26 or 0
        L27_27 = string
        L27_27 = L27_27.find
        L28_28 = L24_24
        L29_29 = "."
        L30_30 = L26_26
        L31_31 = true
        L27_27 = L27_27(L28_28, L29_29, L30_30, L31_31)
        if L27_27 ~= nil then
          L28_28 = string
          L28_28 = L28_28.sub
          L29_29 = L24_24
          L30_30 = L26_26 + 1
          L31_31 = L27_27 - 1
          L28_28 = L28_28(L29_29, L30_30, L31_31)
          if L28_28 ~= nil then
            L29_29 = L4_4[L28_28]
            if L29_29 == nil then
              L29_29 = {L30_30, L31_31}
              L30_30 = L25_25
              L31_31 = L22_22
              L4_4[L28_28] = L29_29
            else
              L29_29 = table
              L29_29 = L29_29.insert
              L30_30 = L4_4[L28_28]
              L31_31 = L22_22
              L29_29(L30_30, L31_31)
            end
          end
        end
      end
    end
  end
end
L17_17 = 0
for L23_23 = 1, L0_0 do
  L24_24 = sigattr_tail
  L24_24 = L24_24[L23_23]
  L24_24 = L24_24.attribute
  if L24_24 == 16387 then
    L25_25 = sigattr_tail
    L25_25 = L25_25[L23_23]
    L25_25 = L25_25.utf8p1
    L26_26 = L25_25
    L25_25 = L25_25.lower
    L25_25 = L25_25(L26_26)
    L26_26 = mp
    L26_26 = L26_26.crc32
    L27_27 = 0
    L28_28 = L25_25
    L29_29 = 1
    L30_30 = #L25_25
    L26_26 = L26_26(L27_27, L28_28, L29_29, L30_30)
    L27_27 = L1_1[L26_26]
    if L27_27 == nil then
      L27_27 = table
      L27_27 = L27_27.insert
      L28_28 = L2_2
      L29_29 = L23_23
      L27_27(L28_28, L29_29)
    else
      L3_3[L26_26] = nil
    end
    L27_27 = L19_19[L26_26]
    if L27_27 == nil then
      L17_17 = L17_17 + 1
      L19_19[L26_26] = 1
    end
  end
end
if L17_17 < 5 then
  return L20_20
end
for L23_23, L24_24 in L20_20(L21_21) do
  L25_25 = sigattr_tail
  L25_25 = L25_25[L24_24]
  L25_25 = L25_25.utf8p1
  L26_26 = L25_25
  L25_25 = L25_25.lower
  L25_25 = L25_25(L26_26)
  L26_26 = string
  L26_26 = L26_26.find
  L27_27 = L25_25
  L28_28 = "\\[^\\]*$"
  L26_26 = L26_26(L27_27, L28_28)
  L26_26 = L26_26 or 0
  L27_27 = string
  L27_27 = L27_27.find
  L28_28 = L25_25
  L29_29 = "."
  L30_30 = L26_26
  L31_31 = true
  L27_27 = L27_27(L28_28, L29_29, L30_30, L31_31)
  if L27_27 ~= nil then
    L28_28 = string
    L28_28 = L28_28.sub
    L29_29 = L25_25
    L30_30 = L26_26 + 1
    L31_31 = -1
    L28_28 = L28_28(L29_29, L30_30, L31_31)
    L29_29 = string
    L29_29 = L29_29.sub
    L30_30 = L25_25
    L31_31 = L26_26 + 1
    L32_32 = L27_27 - 1
    L29_29 = L29_29(L30_30, L31_31, L32_32)
    L30_30 = nil
    if L28_28 ~= nil then
      L32_32 = L28_28
      L31_31 = L28_28.match
      L33_33 = "%.[^%.]+$"
      L31_31 = L31_31(L32_32, L33_33)
      L30_30 = L31_31
    end
    if L29_29 ~= nil and L30_30 ~= nil then
      L31_31 = mp
      L31_31 = L31_31.bitand
      L32_32 = mp
      L32_32 = L32_32.GetExtensionClass
      L33_33 = L30_30
      L32_32 = L32_32(L33_33)
      L33_33 = 3
      L31_31 = L31_31(L32_32, L33_33)
      if L31_31 ~= 0 then
        L31_31 = L4_4[L29_29]
        if L31_31 ~= nil then
          L31_31 = L4_4[L29_29]
          L31_31 = L31_31[1]
          L32_32 = L3_3[L31_31]
          if L32_32 ~= nil then
            L32_32 = sigattr_tail
            L33_33 = L3_3[L31_31]
            L33_33 = L33_33[1]
            L32_32 = L32_32[L33_33]
            L32_32 = L32_32.utf8p1
            L33_33 = L32_32
            L32_32 = L32_32.lower
            L32_32 = L32_32(L33_33)
            L33_33 = L1_1[L31_31]
            if L33_33 ~= nil then
              L33_33 = L1_1[L31_31]
              L33_33 = L33_33[1]
              if L33_33 then
                L33_33 = L1_1[L31_31]
                L33_33 = L33_33[1]
                L7_7[L24_24] = L33_33
              end
            end
            L33_33 = #L32_32
            L34_34 = #L25_25
            if L33_33 > L34_34 then
              L34_34 = L32_32
              L33_33 = L32_32.find
              L35_35 = L25_25
              L33_33 = L33_33(L34_34, L35_35, L36_36, L37_37)
              if L33_33 == 1 then
                L34_34 = L32_32
                L33_33 = L32_32.byte
                L35_35 = #L25_25
                L35_35 = L35_35 + 1
                L33_33 = L33_33(L34_34, L35_35)
                if L33_33 ~= 58 then
                  L33_33 = string
                  L33_33 = L33_33.sub
                  L34_34 = L32_32
                  L35_35 = #L25_25
                  L35_35 = L35_35 + 1
                  L33_33 = L33_33(L34_34, L35_35)
                  L34_34 = L5_5[L33_33]
                  if L34_34 ~= nil then
                    L34_34 = L6_6[L31_31]
                    if L34_34 == nil then
                      L6_6[L31_31] = 1
                      L34_34 = table
                      L34_34 = L34_34.insert
                      L35_35 = L5_5[L33_33]
                      L34_34(L35_35, L36_36)
                      L34_34 = table
                      L34_34 = L34_34.insert
                      L35_35 = L5_5[L33_33]
                      L34_34(L35_35, L36_36)
                      L34_34 = L5_5[L33_33]
                      L34_34 = #L34_34
                      if L34_34 >= 10 then
                        L34_34 = false
                        L35_35 = {}
                        L35_35.count = 0
                        for L39_39, L40_40 in L36_36(L37_37) do
                          L41_41 = sysio
                          L41_41 = L41_41.ReadFile
                          L41_41 = L41_41(L42_42, L43_43, L44_44)
                          if L41_41 ~= nil then
                            if L42_42 == nil then
                              L35_35[L41_41] = 1
                              L35_35.count = L42_42
                            end
                          end
                          if L42_42 ~= nil and L15_15 == false then
                            if not L43_43 then
                              if L43_43 ~= nil then
                                if L44_44 > 20 then
                                  for L48_48, L49_49 in L45_45(L46_46, L47_47) do
                                    L44_44[L48_48] = L49_49
                                  end
                                  if L45_45 ~= nil then
                                    if L45_45 ~= nil then
                                      if L45_45 ~= nil then
                                        L10_10 = L44_44.UsrName
                                        L11_11 = L44_44.Domain
                                        L12_12 = L45_45
                                        L13_13 = L45_45
                                        L16_16 = L44_44.FSize
                                        if L45_45 ~= nil and (L14_14 == "" or L14_14 == L45_45) then
                                          L48_48 = {}
                                          L49_49 = sigattr_tail
                                          L49_49 = L49_49[L40_40]
                                          L49_49 = L49_49.utf8p1
                                          L48_48.path = L49_49
                                          L48_48.magic = L41_41
                                          L48_48.fileSize = L16_16
                                          L46_46(L47_47, L48_48)
                                          L14_14 = L45_45
                                        else
                                          L15_15 = true
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
                        L36_36.appended_ext = L33_33
                        L36_36.magic_mismatch = L34_34
                        L41_41 = "FileChain_MainSet:"
                        for L45_45, L46_46 in L42_42(L43_43) do
                          L48_48 = string
                          L48_48 = L48_48.find
                          L49_49 = L47_47
                          L50_50 = "\\[^\\]*$"
                          L48_48 = L48_48(L49_49, L50_50)
                          L48_48 = L48_48 or 0
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
                          L50_50 = table
                          L50_50 = L50_50.insert
                          L50_50(L37_37, sigattr_tail[L46_46].utf8p1)
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
                            L49_49(L50_50, "T1485", "susp_ransomware_childproc_type4")
                          end
                        end
                        L44_44(L45_45, L46_46, L47_47)
                        L48_48 = bm
                        L48_48 = L48_48.RelatedStringBMReport
                        L45_45(L46_46, L47_47, L48_48)
                        L45_45(L46_46, L47_47)
                        L45_45()
                        L45_45(L46_46, L47_47)
                        L48_48 = "susp_ransomware_type4"
                        L45_45(L46_46, L47_47, L48_48)
                        L45_45()
                        L48_48 = bm
                        L48_48 = L48_48.RelatedStringBMReport
                        L45_45(L46_46, L47_47, L48_48)
                        L45_45()
                        if L15_15 == false then
                          if L45_45 > 0 and L14_14 ~= nil and L14_14 ~= "" then
                            L45_45.Extension = L33_33
                            L45_45.imagePath = L38_38
                            L45_45.commandLine = L40_40
                            L45_45.ppID = L39_39
                            L45_45.UserName = L12_12
                            L45_45.Domain = L13_13
                            L45_45.file_list = L9_9
                            L45_45.Type = "Type4"
                            L8_8 = L45_45
                            L48_48 = L45_45
                            L49_49 = bm
                            L49_49 = L49_49.RelatedStringBMReport
                            L46_46(L47_47, L48_48, L49_49)
                            L48_48 = L45_45
                            L46_46(L47_47, L48_48)
                            if not L46_46 then
                              L48_48 = bm
                              L48_48 = L48_48.add_related_string
                              L49_49 = "updateSystemDNSServers_fail"
                              L50_50 = L47_47
                              L48_48(L49_49, L50_50, bm.RelatedStringBMReport)
                            end
                            L48_48 = pcall
                            L49_49 = updateDomainInfo
                            L50_50 = L48_48(L49_49)
                            if L48_48 then
                              L8_8.ipTypeFlags = GetRollingQueueKeyValue("domainInfo", L14_14)
                            else
                              bm.add_related_string("updateDomainInfo_fail", L49_49, bm.RelatedStringBMReport)
                            end
                            if SafeGetUrlReputation({L14_14}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L8_8)
                            }).urls[L14_14] and SafeGetUrlReputation({L14_14}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L8_8)
                            }).urls[L14_14].determination == 2 and SafeGetUrlReputation({L14_14}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L8_8)
                            }).urls[L14_14].confidence and SafeGetUrlReputation({L14_14}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L8_8)
                            }).urls[L14_14].confidence >= 60 and SafeGetUrlReputation({L14_14}, {
                              SIG_CONTEXT = "BM",
                              CONTEXT_SOURCE = "GenRansom",
                              TAG = "NOLOOKUP",
                              data = safeJsonSerialize(L8_8)
                            }).urls[L14_14].context.Source == "GenRansom" then
                              L8_8.confidence = SafeGetUrlReputation({L14_14}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L8_8)
                              }).urls[L14_14].confidence
                              L8_8.family = SafeGetUrlReputation({L14_14}, {
                                SIG_CONTEXT = "BM",
                                CONTEXT_SOURCE = "GenRansom",
                                TAG = "NOLOOKUP",
                                data = safeJsonSerialize(L8_8)
                              }).urls[L14_14].context.Family
                              L8_8.action = {
                                action = SafeGetUrlReputation({L14_14}, {
                                  SIG_CONTEXT = "BM",
                                  CONTEXT_SOURCE = "GenRansom",
                                  TAG = "NOLOOKUP",
                                  data = safeJsonSerialize(L8_8)
                                }).urls[L14_14].context.action,
                                parameter = SafeGetUrlReputation({L14_14}, {
                                  SIG_CONTEXT = "BM",
                                  CONTEXT_SOURCE = "GenRansom",
                                  TAG = "NOLOOKUP",
                                  data = safeJsonSerialize(L8_8)
                                }).urls[L14_14].context.action_parameter,
                                ttl = SafeGetUrlReputation({L14_14}, {
                                  SIG_CONTEXT = "BM",
                                  CONTEXT_SOURCE = "GenRansom",
                                  TAG = "NOLOOKUP",
                                  data = safeJsonSerialize(L8_8)
                                }).urls[L14_14].context.action_ttl
                              }
                              L8_8.ip = L14_14
                              L8_8.unscrubbed_username = L10_10
                              L8_8.unscrubbed_domain = L11_11
                              bm.trigger_sig("RemoteGenericRansomware:Malware", safeJsonSerialize(L8_8))
                            end
                          end
                        end
                        return L45_45
                      end
                    end
                  else
                    L34_34 = {L35_35, L36_36}
                    L35_35 = L3_3[L31_31]
                    L35_35 = L35_35[1]
                    L5_5[L33_33] = L34_34
                    L6_6[L31_31] = 1
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
return L20_20
