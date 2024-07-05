local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
if L0_0 > 60 then
  L1_1 = {}
  L2_2 = ""
  L3_3 = ""
  L4_4 = 0
  for L8_8 = 1, L0_0 do
    L9_9 = sigattr_tail
    L9_9 = L9_9[L8_8]
    L9_9 = L9_9.attribute
    if L9_9 == 16384 then
      L9_9 = sigattr_tail
      L9_9 = L9_9[L8_8]
      L2_2 = L9_9.utf8p1
      L9_9 = mp
      L9_9 = L9_9.crc32
      L10_10 = 0
      L11_11 = L2_2
      L12_12 = 1
      L13_13 = #L2_2
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13)
      L3_3 = L9_9
      L1_1[L3_3] = 1
      L4_4 = L4_4 + 1
    end
  end
  if L4_4 > 20 then
    L8_8 = ""
    L9_9 = ""
    L10_10 = {}
    L11_11 = ""
    L12_12 = 0
    L13_13 = 0
    L14_14 = ""
    L15_15 = 0
    L16_16 = 0
    L17_17 = 0
    L18_18 = {}
    L19_19 = bm
    L19_19 = L19_19.get_current_process_startup_info
    L19_19 = L19_19()
    L20_20 = L19_19.ppid
    L19_19 = L20_20 or -1
    L20_20 = "genc_ransom_meta_"
    L21_21 = L19_19
    L20_20 = L20_20 .. L21_21
    L21_21 = "CreateFile"
    L22_22 = ""
    L23_23 = 1800
    L24_24 = 100
    for L28_28 = 1, L0_0 do
      L29_29 = sigattr_tail
      L29_29 = L29_29[L28_28]
      L29_29 = L29_29.attribute
      if L29_29 == 16389 then
        L29_29 = sigattr_tail
        L29_29 = L29_29[L28_28]
        L29_29 = L29_29.utf8p2
        if L29_29 == "ATTR_c09458eb" then
          L29_29 = sigattr_tail
          L29_29 = L29_29[L28_28]
          L29_29 = L29_29.utf8p1
          if L29_29 ~= nil then
            L29_29 = sigattr_tail
            L29_29 = L29_29[L28_28]
            L29_29 = mp
            L29_29 = L29_29.crc32
            L29_29 = L29_29(0, L5_5, 1, #L5_5)
            L29_29 = L1_1[L6_6]
            if L29_29 == 1 then
              L29_29 = string
              L29_29 = L29_29.match
              L29_29 = L29_29(L5_5, "[^\\]+$")
              L29_29 = string
              L29_29 = L29_29.match
              L29_29 = L29_29(L5_5, "(.*[/\\])")
              L8_8 = L29_29
              L29_29 = string
              L29_29 = L29_29.gsub
              L12_12, L29_29 = L7_7, L29_29(L7_7, "%.", "")
              _ = L29_29
              if L12_12 > 1 then
                L29_29 = string
                L29_29 = L29_29.match
                L29_29 = L29_29(L7_7, "%.[^%.]+$")
                L11_11 = L29_29
                L29_29 = mp
                L29_29 = L29_29.GetExtensionClass
                L29_29 = L29_29(L11_11)
                if L29_29 ~= 4 then
                  L29_29 = #L11_11
                  if L29_29 > 4 then
                    L29_29 = sysio
                    L29_29 = L29_29.GetFileSize
                    L29_29 = L29_29(L5_5)
                    L13_13 = L29_29
                    if L13_13 ~= nil and L13_13 > 256 then
                      L29_29 = sysio
                      L29_29 = L29_29.ReadFile
                      L29_29 = L29_29(L5_5, 0, 256)
                      if L29_29 ~= nil then
                        L14_14 = string.format("\\x%02X\\x%02X\\x%02X\\x%02X", string.byte(L29_29, 1, 4))
                        L15_15 = crypto.ComputeEntropy(L29_29)
                        if L15_15 >= 7 then
                          L9_9 = mp.crc32(0, L8_8, 1, #L8_8)
                          if L10_10[L9_9] ~= 1 then
                            L17_17 = L17_17 + 1
                            L10_10[L9_9] = 1
                          end
                          table.insert(L18_18, {
                            FileName = L7_7,
                            FolderPath = L8_8,
                            FileSize = L13_13,
                            Magic = L14_14,
                            Entropy100 = L15_15
                          })
                          L16_16 = L16_16 + 1
                          L22_22 = L5_5 .. "|" .. L8_8 .. "|" .. L7_7 .. "|" .. L12_12 .. "|" .. L11_11 .. "|" .. L13_13 .. "|" .. L14_14 .. "|" .. L15_15 .. "|"
                          AppendToRollingQueue(L20_20, L21_21, L22_22, L23_23, L24_24, 0)
                          if L16_16 > 20 and L17_17 > 3 then
                            bm.add_related_string("GenCRansom_encryptedData", safeJsonSerialize(L18_18), bm.RelatedStringBMReport)
                            reportTimingData()
                            return mp.INFECTED
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
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
