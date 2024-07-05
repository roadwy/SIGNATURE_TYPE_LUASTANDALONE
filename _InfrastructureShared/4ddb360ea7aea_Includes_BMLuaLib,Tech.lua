local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
for L5_5 = 1, L0_0 do
  if L6_6 == 16385 then
    L8_8 = 0
    L9_9 = L6_6
    L10_10 = 1
    L11_11 = #L6_6
    L1_1[L7_7] = 1
  end
end
for L6_6 = 1, L0_0 do
  if L7_7 == 16389 then
    if L7_7 == "ATTR_c09458eb" then
      L8_8 = mp
      L8_8 = L8_8.crc32
      L9_9 = 0
      L10_10 = L7_7
      L11_11 = 1
      L12_12 = #L7_7
      L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
      L2_2[L8_8] = L6_6
    end
  end
end
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == 16386 then
    L9_9 = sigattr_tail
    L9_9 = L9_9[L8_8]
    L9_9 = L9_9.utf8p2
    L10_10 = L9_9
    L9_9 = L9_9.lower
    L9_9 = L9_9(L10_10)
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    L11_11 = L10_10
    L10_10 = L10_10.lower
    L10_10 = L10_10(L11_11)
    L11_11 = mp
    L11_11 = L11_11.crc32
    L12_12 = 0
    L13_13 = L9_9
    L14_14 = 1
    L15_15 = #L9_9
    L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
    L12_12 = mp
    L12_12 = L12_12.crc32
    L13_13 = 0
    L14_14 = L10_10
    L15_15 = 1
    L16_16 = #L10_10
    L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
    L13_13 = L1_1[L12_12]
    if L13_13 == nil then
      L13_13 = L1_1[L11_11]
    elseif L13_13 ~= nil then
      L13_13 = L4_4[L11_11]
      if L13_13 == nil then
        L14_14 = L9_9
        L13_13 = L9_9.match
        L15_15 = "%.[^%.]+$"
        L13_13 = L13_13(L14_14, L15_15)
        if L13_13 ~= nil then
          L14_14 = mp
          L14_14 = L14_14.bitand
          L15_15 = mp
          L15_15 = L15_15.GetExtensionClass
          L16_16 = L13_13
          L15_15 = L15_15(L16_16)
          L16_16 = 3
          L14_14 = L14_14(L15_15, L16_16)
          if L14_14 ~= 0 then
            L14_14 = #L9_9
            L15_15 = #L10_10
            if L14_14 < L15_15 then
              L15_15 = L10_10
              L14_14 = L10_10.find
              L16_16 = L9_9
              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
              if L14_14 == 1 then
                L15_15 = L10_10
                L14_14 = L10_10.byte
                L16_16 = #L9_9
                L16_16 = L16_16 + 1
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 ~= 58 then
                  L4_4[L11_11] = 1
                  L15_15 = L10_10
                  L14_14 = L10_10.match
                  L16_16 = "%.[^%.]+$"
                  L14_14 = L14_14(L15_15, L16_16)
                  L15_15 = mp
                  L15_15 = L15_15.GetExtensionClass
                  L16_16 = L14_14
                  L15_15 = L15_15(L16_16)
                  if L15_15 ~= 4 then
                    L15_15 = string
                    L15_15 = L15_15.sub
                    L16_16 = L10_10
                    L15_15 = L15_15(L16_16, L17_17)
                    L16_16 = L3_3[L15_15]
                    if L16_16 ~= nil then
                      L16_16 = table
                      L16_16 = L16_16.insert
                      L16_16(L17_17, L18_18)
                      L16_16 = L3_3[L15_15]
                      L16_16 = #L16_16
                      if L16_16 >= 5 then
                        L16_16 = {}
                        L16_16.count = 0
                        for L20_20, L21_21 in L17_17(L18_18) do
                          L22_22 = sysio
                          L22_22 = L22_22.ReadFile
                          L23_23 = sigattr_tail
                          L23_23 = L23_23[L21_21]
                          L23_23 = L23_23.utf8p1
                          L24_24 = 0
                          L22_22 = L22_22(L23_23, L24_24, L25_25)
                          if L22_22 ~= nil then
                            L23_23 = L16_16[L22_22]
                            if L23_23 == nil then
                              L16_16[L22_22] = 1
                              L23_23 = L16_16.count
                              L23_23 = L23_23 + 1
                              L16_16.count = L23_23
                            end
                          end
                        end
                        if L17_17 > 4 then
                          L20_20 = bm
                          L20_20 = L20_20.RelatedStringBMReport
                          L17_17(L18_18, L19_19, L20_20)
                        else
                          L20_20 = bm
                          L20_20 = L20_20.RelatedStringBMReport
                          L17_17(L18_18, L19_19, L20_20)
                        end
                        L20_20 = bm
                        L20_20 = L20_20.RelatedStringBMReport
                        L17_17(L18_18, L19_19, L20_20)
                        if L17_17 ~= nil then
                        else
                        end
                        L20_20 = ""
                        L21_21 = 1800
                        L22_22 = 100
                        L23_23 = {}
                        L24_24 = "FileChain_MainSet:"
                        for L28_28, L29_29 in L25_25(L26_26) do
                          L30_30 = sigattr_tail
                          L30_30 = L30_30[L29_29]
                          L30_30 = L30_30.utf8p1
                          L31_31 = string
                          L31_31 = L31_31.find
                          L32_32 = L30_30
                          L33_33 = "\\[^\\]*$"
                          L31_31 = L31_31(L32_32, L33_33)
                          L31_31 = L31_31 or 0
                          L32_32 = string
                          L32_32 = L32_32.find
                          L33_33 = L30_30
                          L34_34 = "."
                          L35_35 = L31_31
                          L36_36 = true
                          L32_32 = L32_32(L33_33, L34_34, L35_35, L36_36)
                          if L32_32 ~= nil then
                            L33_33 = string
                            L33_33 = L33_33.sub
                            L34_34 = L30_30
                            L35_35 = L31_31 + 1
                            L36_36 = L32_32 - 1
                            L33_33 = L33_33(L34_34, L35_35, L36_36)
                            L34_34 = L24_24
                            L35_35 = crypto
                            L35_35 = L35_35.CRC32Buffer
                            L36_36 = -1
                            L37_37 = L33_33
                            L38_38 = 0
                            L39_39 = #L33_33
                            L35_35 = L35_35(L36_36, L37_37, L38_38, L39_39)
                            L24_24 = L34_34 .. L35_35
                            L34_34 = L24_24
                            L35_35 = ";"
                            L36_36 = string
                            L36_36 = L36_36.sub
                            L37_37 = L30_30
                            L38_38 = L32_32 + 1
                            L36_36 = L36_36(L37_37, L38_38)
                            L37_37 = ";"
                            L24_24 = L34_34 .. L35_35 .. L36_36 .. L37_37
                          end
                          L33_33 = sigattr_tail
                          L33_33 = L33_33[L29_29]
                          L30_30 = L33_33.utf8p2
                          L33_33 = string
                          L33_33 = L33_33.find
                          L34_34 = L30_30
                          L35_35 = "\\[^\\]*$"
                          L33_33 = L33_33(L34_34, L35_35)
                          L31_31 = L33_33 or 0
                          L33_33 = string
                          L33_33 = L33_33.find
                          L34_34 = L30_30
                          L35_35 = "."
                          L36_36 = L31_31
                          L37_37 = true
                          L33_33 = L33_33(L34_34, L35_35, L36_36, L37_37)
                          L32_32 = L33_33
                          if L32_32 ~= nil then
                            L33_33 = string
                            L33_33 = L33_33.sub
                            L34_34 = L30_30
                            L35_35 = L31_31 + 1
                            L36_36 = L32_32 - 1
                            L33_33 = L33_33(L34_34, L35_35, L36_36)
                            L34_34 = L24_24
                            L35_35 = crypto
                            L35_35 = L35_35.CRC32Buffer
                            L36_36 = -1
                            L37_37 = L33_33
                            L38_38 = 0
                            L39_39 = #L33_33
                            L35_35 = L35_35(L36_36, L37_37, L38_38, L39_39)
                            L24_24 = L34_34 .. L35_35
                            L34_34 = L24_24
                            L35_35 = ";"
                            L36_36 = string
                            L36_36 = L36_36.sub
                            L37_37 = L30_30
                            L38_38 = L32_32 + 1
                            L36_36 = L36_36(L37_37, L38_38)
                            L37_37 = ";"
                            L24_24 = L34_34 .. L35_35 .. L36_36 .. L37_37
                          end
                          L33_33 = L15_15
                          L34_34 = "|"
                          L20_20 = L33_33 .. L34_34
                          L33_33 = L20_20
                          L34_34 = sigattr_tail
                          L34_34 = L34_34[L29_29]
                          L34_34 = L34_34.utf8p1
                          L35_35 = "|"
                          L36_36 = sigattr_tail
                          L36_36 = L36_36[L29_29]
                          L36_36 = L36_36.utf8p2
                          L37_37 = "|"
                          L20_20 = L33_33 .. L34_34 .. L35_35 .. L36_36 .. L37_37
                          L33_33 = "Known"
                          L34_34 = mp
                          L34_34 = L34_34.crc32
                          L35_35 = 0
                          L36_36 = sigattr_tail
                          L36_36 = L36_36[L29_29]
                          L36_36 = L36_36.utf8p1
                          L37_37 = 1
                          L38_38 = sigattr_tail
                          L38_38 = L38_38[L29_29]
                          L38_38 = L38_38.utf8p1
                          L38_38 = #L38_38
                          L34_34 = L34_34(L35_35, L36_36, L37_37, L38_38)
                          L35_35 = mp
                          L35_35 = L35_35.crc32
                          L36_36 = 0
                          L37_37 = sigattr_tail
                          L37_37 = L37_37[L29_29]
                          L37_37 = L37_37.utf8p2
                          L38_38 = 1
                          L39_39 = sigattr_tail
                          L39_39 = L39_39[L29_29]
                          L39_39 = L39_39.utf8p2
                          L39_39 = #L39_39
                          L35_35 = L35_35(L36_36, L37_37, L38_38, L39_39)
                          L36_36 = L2_2[L34_34]
                          if L36_36 == nil then
                            L36_36 = L2_2[L35_35]
                          elseif L36_36 ~= nil then
                            L33_33 = "Unknown"
                          end
                          L36_36 = L20_20
                          L37_37 = L33_33
                          L38_38 = "|"
                          L20_20 = L36_36 .. L37_37 .. L38_38
                          L36_36 = sysio
                          L36_36 = L36_36.GetFileSize
                          L37_37 = sigattr_tail
                          L37_37 = L37_37[L29_29]
                          L37_37 = L37_37.utf8p1
                          L36_36 = L36_36(L37_37)
                          L37_37 = L20_20
                          L38_38 = L36_36
                          L39_39 = "|"
                          L20_20 = L37_37 .. L38_38 .. L39_39
                          L37_37 = L36_36
                          L38_38 = ""
                          L39_39 = ""
                          if L36_36 ~= nil and L36_36 > 256 then
                            L36_36 = 256
                            L40_40 = sysio
                            L40_40 = L40_40.ReadFile
                            L40_40 = L40_40(sigattr_tail[L29_29].utf8p1, 0, L36_36)
                            if L40_40 ~= nil then
                              L38_38 = string.format("\\x%02X\\x%02X\\x%02X\\x%02X", string.byte(L40_40, 1, 4))
                              L39_39 = crypto.ComputeEntropy(L40_40)
                              table.insert(L23_23, {
                                File_Size = L37_37,
                                FileType = L33_33,
                                MagicByte = L38_38,
                                Entropy = L39_39
                              })
                            end
                          end
                          L40_40 = L20_20
                          L20_20 = L40_40 .. L38_38 .. "|" .. L39_39
                          L40_40 = AppendToRollingQueue
                          L40_40(L18_18, L19_19, L20_20, L21_21, L22_22, 0)
                        end
                        L25_25(L26_26, L27_27, L28_28)
                        L40_40 = L28_28(L29_29)
                        L25_25(L26_26, L27_27, L28_28)
                        for L30_30, L31_31 in L27_27(L28_28) do
                          L32_32 = L31_31.image_path
                          if L32_32 ~= nil then
                            L32_32 = bm
                            L32_32 = L32_32.add_related_process
                            L33_33 = L31_31.ppid
                            L32_32(L33_33)
                          end
                        end
                        for L30_30, L31_31 in L27_27(L28_28) do
                          L32_32 = L31_31.image_path
                          if L32_32 ~= nil then
                            L32_32 = bm
                            L32_32 = L32_32.add_related_process
                            L33_33 = L31_31.ppid
                            L32_32(L33_33)
                            L32_32 = TrackPidAndTechniqueBM
                            L33_33 = L31_31.ppid
                            L34_34 = "T1485"
                            L35_35 = "susp_ransomware_childproc_type2"
                            L32_32(L33_33, L34_34, L35_35)
                          end
                        end
                        L30_30 = bm
                        L30_30 = L30_30.RelatedStringBMReport
                        L27_27(L28_28, L29_29, L30_30)
                        if L27_27 > 5 then
                          L30_30 = "GenericRansomware"
                          L31_31 = "Type2:Count_"
                          L32_32 = L28_28
                          L31_31 = L31_31 .. L32_32
                          L29_29(L30_30, L31_31)
                        end
                        L29_29()
                        L30_30 = "SmsAsyncScanEvent"
                        L31_31 = 100
                        L29_29(L30_30, L31_31)
                        L30_30 = L17_17
                        L31_31 = "T1486"
                        L32_32 = "susp_ransomware_type4"
                        L29_29(L30_30, L31_31, L32_32)
                        if L28_28 < 5 then
                          return L29_29
                        end
                        L29_29()
                        return L29_29
                      end
                    else
                      L16_16 = {L17_17}
                      L3_3[L15_15] = L16_16
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
return L5_5
