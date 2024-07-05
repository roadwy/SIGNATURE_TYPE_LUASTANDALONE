local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = 5
for L7_7 = 1, L0_0 do
  L8_8 = sigattr_tail
  L8_8 = L8_8[L7_7]
  L8_8 = L8_8.utf8p2
  L9_9 = sigattr_tail
  L9_9 = L9_9[L7_7]
  L9_9 = L9_9.attribute
  if L9_9 == 16385 then
    L9_9 = sigattr_tail
    L9_9 = L9_9[L7_7]
    L9_9 = L9_9.utf8p1
    L10_10 = L9_9
    L9_9 = L9_9.byte
    L11_11 = 1
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= 37 then
      L10_10 = L8_8
      L9_9 = L8_8.find
      L11_11 = "TotalSizeAppend:0"
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      if L9_9 == nil then
        L9_9 = sigattr_tail
        L9_9 = L9_9[L7_7]
        L9_9 = L9_9.utf8p1
        L10_10 = L9_9
        L9_9 = L9_9.lower
        L9_9 = L9_9(L10_10)
        L11_11 = L9_9
        L10_10 = L9_9.match
        L10_10 = L10_10(L11_11, L12_12)
        if L10_10 ~= nil then
          L11_11 = mp
          L11_11 = L11_11.crc32
          L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
          if L13_13 == nil then
            L2_2[L11_11] = L7_7
            for L16_16, L17_17 in L13_13(L14_14, L15_15) do
              L12_12[L16_16] = L17_17
            end
            L16_16 = L12_12.TotalSizeAppend
            if L13_13 ~= nil and L14_14 ~= nil and L15_15 ~= nil and L13_13 > 0 and L14_14 > 0 and L14_14 > L15_15 and L15_15 > 5 and L15_15 < 2000 then
              L16_16 = L1_1[L15_15]
              if L16_16 ~= nil then
                L16_16 = table
                L16_16 = L16_16.insert
                L17_17 = L1_1[L15_15]
                L18_18 = L7_7
                L16_16(L17_17, L18_18)
              else
                L16_16 = {L17_17}
                L17_17 = L7_7
                L1_1[L15_15] = L16_16
              end
            end
          end
        end
      end
    end
  end
end
L7_7 = {}
L8_8 = ""
L9_9 = ""
L10_10 = ""
L11_11 = ""
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = #L16_16
  if L3_3 <= L17_17 then
    L18_18 = {}
    L19_19 = {}
    for L23_23 = 1, L17_17 do
      L24_24 = L1_1[L15_15]
      L24_24 = L24_24[L23_23]
      L25_25 = sigattr_tail
      L25_25 = L25_25[L24_24]
      L25_25 = L25_25.utf8p2
      L26_26 = {}
      for L31_31, L32_32 in L28_28(L29_29, L30_30) do
        L26_26[L31_31] = L32_32
      end
      L27_27.block_size = L28_28
      L27_27.path = L28_28
      for L31_31 = 1, L0_0 do
        if L32_32 == 16386 then
          L34_34 = 1
          if L32_32 ~= 37 then
            if L32_32 == L33_33 then
              L27_27.renamed_path = L32_32
              L34_34 = L33_33
              L35_35 = L32_32
              L34_34 = L32_32.match
              L36_36 = "(.*[/\\])"
              L34_34 = L34_34(L35_35, L36_36)
              L35_35 = L34_34
              L34_34 = L34_34.lower
              L34_34 = L34_34(L35_35)
              L36_36 = L33_33
              L35_35 = L33_33.match
              L37_37 = "(.*[/\\])"
              L35_35 = L35_35(L36_36, L37_37)
              L36_36 = L35_35
              L35_35 = L35_35.lower
              L35_35 = L35_35(L36_36)
              if L34_34 == L35_35 then
                L37_37 = L32_32
                L36_36 = L32_32.find
                L38_38 = L33_33
                L36_36 = L36_36(L37_37, L38_38, 1, true)
                if L36_36 == 1 then
                  L37_37 = L32_32
                  L36_36 = L32_32.byte
                  L38_38 = #L33_33
                  L38_38 = L38_38 + 1
                  L36_36 = L36_36(L37_37, L38_38)
                  if L36_36 ~= 58 then
                    L37_37 = L32_32
                    L36_36 = L32_32.match
                    L38_38 = "%.[^%.]+$"
                    L36_36 = L36_36(L37_37, L38_38)
                    if L36_36 then
                      L37_37 = mp
                      L37_37 = L37_37.GetExtensionClass
                      L38_38 = L36_36
                      L37_37 = L37_37(L38_38)
                      if L37_37 ~= 4 then
                        L37_37 = string
                        L37_37 = L37_37.sub
                        L38_38 = L32_32
                        L37_37 = L37_37(L38_38, #L33_33 + 1)
                        L38_38 = L6_6[L37_37]
                        if L38_38 ~= nil then
                          L38_38 = table
                          L38_38 = L38_38.insert
                          L38_38(L6_6[L37_37], L31_31)
                        else
                          L38_38 = {L31_31}
                          L6_6[L37_37] = L38_38
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
      L28_28(L29_29, L30_30)
      if L29_29 > 136 then
        if L29_29 ~= nil then
          if L30_30 > 20 then
            for L34_34, L35_35 in L31_31(L32_32, L33_33) do
              L30_30[L34_34] = L35_35
            end
            if L31_31 ~= nil then
              if L31_31 ~= nil then
                if L31_31 ~= nil then
                  L11_11 = L30_30.UsrName
                  L9_9 = L30_30.Domain
                  L8_8 = L31_31
                  L10_10 = L31_31
                  L34_34 = sigattr_tail
                  L34_34 = L34_34[L24_24]
                  L34_34 = L34_34.utf8p1
                  L35_35 = 0
                  L36_36 = 4
                  if L31_31 ~= nil and (L4_4 == "" or L4_4 == L31_31) then
                    L34_34 = table
                    L34_34 = L34_34.insert
                    L35_35 = L7_7
                    L36_36 = {}
                    L37_37 = sigattr_tail
                    L37_37 = L37_37[L24_24]
                    L37_37 = L37_37.utf8p1
                    L36_36.path = L37_37
                    L36_36.magic = L33_33
                    L36_36.fileSize = L32_32
                    L34_34(L35_35, L36_36)
                  else
                  end
                end
              end
            end
          end
        end
      end
    end
    for L24_24, L25_25 in L21_21(L22_22) do
      L26_26 = false
      L27_27.count = 0
      if L29_29 > 4 then
        for L32_32, L33_33 in L29_29(L30_30) do
          L34_34 = sysio
          L34_34 = L34_34.ReadFile
          L35_35 = sigattr_tail
          L35_35 = L35_35[L33_33]
          L35_35 = L35_35.utf8p1
          L36_36 = 0
          L37_37 = 4
          L34_34 = L34_34(L35_35, L36_36, L37_37)
          if L34_34 ~= nil then
            L35_35 = L27_27[L34_34]
            if L35_35 == nil then
              L27_27[L34_34] = 1
              L35_35 = L27_27.count
              L35_35 = L35_35 + 1
              L27_27.count = L35_35
            end
          end
          L35_35 = sigattr_tail
          L35_35 = L35_35[L33_33]
          L35_35 = L35_35.utf8p1
          L36_36 = string
          L36_36 = L36_36.find
          L37_37 = L35_35
          L38_38 = "\\[^\\]*$"
          L36_36 = L36_36(L37_37, L38_38)
          L36_36 = L36_36 or 0
          L37_37 = string
          L37_37 = L37_37.find
          L38_38 = L35_35
          L37_37 = L37_37(L38_38, ".", L36_36, true)
          if L37_37 ~= nil then
            L38_38 = string
            L38_38 = L38_38.sub
            L38_38 = L38_38(L35_35, L36_36 + 1, L37_37 - 1)
          end
          L38_38 = sigattr_tail
          L38_38 = L38_38[L33_33]
          L35_35 = L38_38.utf8p2
          L38_38 = string
          L38_38 = L38_38.find
          L38_38 = L38_38(L35_35, "\\[^\\]*$")
          L36_36 = L38_38 or 0
          L38_38 = string
          L38_38 = L38_38.find
          L38_38 = L38_38(L35_35, ".", L36_36, true)
          L37_37 = L38_38
          if L37_37 ~= nil then
            L38_38 = string
            L38_38 = L38_38.sub
            L38_38 = L38_38(L35_35, L36_36 + 1, L37_37 - 1)
          end
        end
        if L29_29 > 4 then
          L26_26 = true
        end
        L29_29(L30_30, L31_31, L32_32)
        L29_29(L30_30, L31_31, L32_32)
        L29_29(L30_30, L31_31, L32_32)
        break
      end
    end
    L38_38 = L23_23()
    L38_38 = L22_22(L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L23_23())
    L24_24 = -1
    L25_25 = -1
    L26_26 = -1
    if not L27_27 then
      L26_26 = L27_27
      if L26_26 ~= nil then
        for L30_30, L31_31 in L27_27(L28_28) do
          L34_34 = L31_31
          L35_35 = "^Age:([0-9]+)$"
          L38_38 = L33_33(L34_34, L35_35)
          L34_34 = string
          L34_34 = L34_34.match
          L35_35 = L31_31
          L36_36 = "^Prevalence:([0-9]+)$"
          L38_38 = L34_34(L35_35, L36_36)
          if L33_33 ~= nil and L25_25 < L33_33 then
            L25_25 = L33_33
          end
        end
      end
      L24_24 = L27_27
      if L27_27 and L24_24 ~= 0 then
        L24_24 = L27_27 - L28_28
      else
        L24_24 = -1
      end
    else
    end
    if L29_29 ~= nil then
    else
    end
    L30_30.cur_image_path = L21_21
    L30_30.cmd_line = L27_27
    L30_30.newpe_nocert = L22_22
    L30_30.elapsed_time = L24_24
    L30_30.file_age = L23_23
    L30_30.file_prevlence = L25_25
    L19_19.appended_ext = L20_20
    L19_19.append_size = L15_15
    L19_19.file_paths = L18_18
    L19_19.proc_meta_info = L30_30
    L34_34 = L31_31
    L35_35 = bm
    L35_35 = L35_35.RelatedStringBMReport
    L32_32(L33_33, L34_34, L35_35)
    L34_34 = L31_31
    L32_32(L33_33, L34_34)
    L32_32()
    L32_32()
    if L5_5 == false then
      if L32_32 > 0 and L4_4 ~= nil and L4_4 ~= "" then
        L32_32.AppendedSize = L15_15
        L32_32.Extension = L20_20
        L32_32.imagePath = L21_21
        L32_32.commandLine = L27_27
        L32_32.ppID = L28_28
        L32_32.UserName = L8_8
        L32_32.Domain = L10_10
        L32_32.file_list = L7_7
        L32_32.Type = "Type1"
        L34_34 = L32_32
        L34_34 = bm
        L34_34 = L34_34.add_related_string
        L35_35 = "RemoteClientData"
        L36_36 = L33_33
        L37_37 = bm
        L37_37 = L37_37.RelatedStringBMReport
        L34_34(L35_35, L36_36, L37_37)
        L34_34 = pcall
        L35_35 = updateSystemDNSServers
        L35_35 = L34_34(L35_35)
        if not L34_34 then
          L36_36 = bm
          L36_36 = L36_36.add_related_string
          L37_37 = "updateSystemDNSServers_fail"
          L38_38 = L35_35
          L36_36(L37_37, L38_38, bm.RelatedStringBMReport)
        end
        L36_36 = pcall
        L37_37 = updateDomainInfo
        L38_38 = L36_36(L37_37)
        if L36_36 then
          L32_32.ipTypeFlags = GetRollingQueueKeyValue("domainInfo", L4_4)
        else
          bm.add_related_string("updateDomainInfo_fail", L37_37, bm.RelatedStringBMReport)
        end
        if SafeGetUrlReputation({L4_4}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansom",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L32_32)
        }).urls[L4_4] and SafeGetUrlReputation({L4_4}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansom",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L32_32)
        }).urls[L4_4].determination == 2 and SafeGetUrlReputation({L4_4}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansom",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L32_32)
        }).urls[L4_4].confidence and SafeGetUrlReputation({L4_4}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansom",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L32_32)
        }).urls[L4_4].confidence >= 60 and SafeGetUrlReputation({L4_4}, {
          SIG_CONTEXT = "BM",
          CONTEXT_SOURCE = "GenRansom",
          TAG = "NOLOOKUP",
          data = safeJsonSerialize(L32_32)
        }).urls[L4_4].context.Source == "GenRansom" then
          L32_32.confidence = SafeGetUrlReputation({L4_4}, {
            SIG_CONTEXT = "BM",
            CONTEXT_SOURCE = "GenRansom",
            TAG = "NOLOOKUP",
            data = safeJsonSerialize(L32_32)
          }).urls[L4_4].confidence
          L32_32.family = SafeGetUrlReputation({L4_4}, {
            SIG_CONTEXT = "BM",
            CONTEXT_SOURCE = "GenRansom",
            TAG = "NOLOOKUP",
            data = safeJsonSerialize(L32_32)
          }).urls[L4_4].context.Family
          L32_32.action = {
            action = SafeGetUrlReputation({L4_4}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansom",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L32_32)
            }).urls[L4_4].context.action,
            parameter = SafeGetUrlReputation({L4_4}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansom",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L32_32)
            }).urls[L4_4].context.action_parameter,
            ttl = SafeGetUrlReputation({L4_4}, {
              SIG_CONTEXT = "BM",
              CONTEXT_SOURCE = "GenRansom",
              TAG = "NOLOOKUP",
              data = safeJsonSerialize(L32_32)
            }).urls[L4_4].context.action_ttl
          }
          L32_32.ip = L4_4
          L32_32.unscrubbed_username = L11_11
          L32_32.unscrubbed_domain = L9_9
          bm.trigger_sig("RemoteGenericRansomware:Malware", safeJsonSerialize(L32_32))
        end
      end
    end
    return L32_32
  end
end
return L12_12
