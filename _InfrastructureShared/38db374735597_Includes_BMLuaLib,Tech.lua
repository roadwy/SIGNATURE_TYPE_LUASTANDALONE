local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
for L5_5 = 1, L0_0 do
  if L6_6 == 16384 then
    L7_7 = L6_6
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
    L12_12 = L1_1[L10_10]
    if L12_12 ~= nil then
      L12_12 = L3_3[L11_11]
      if L12_12 == nil then
        L13_13 = L9_9
        L12_12 = L9_9.match
        L14_14 = "%.[^%.]+$"
        L12_12 = L12_12(L13_13, L14_14)
        if L12_12 ~= nil then
          L13_13 = mp
          L13_13 = L13_13.GetExtensionClass
          L14_14 = L12_12
          L13_13 = L13_13(L14_14)
          if L13_13 == 2 or L13_13 == 3 or L12_12 == ".pdf" then
            L14_14 = #L9_9
            L15_15 = #L8_8
            if L14_14 < L15_15 then
              L15_15 = L8_8
              L14_14 = L8_8.find
              L16_16 = L9_9
              L17_17 = 1
              L14_14 = L14_14(L15_15, L16_16, L17_17, L18_18)
              if L14_14 == 1 then
                L15_15 = L8_8
                L14_14 = L8_8.byte
                L16_16 = #L9_9
                L16_16 = L16_16 + 1
                L14_14 = L14_14(L15_15, L16_16)
                if L14_14 ~= 58 then
                  L3_3[L11_11] = 1
                  L15_15 = L8_8
                  L14_14 = L8_8.match
                  L16_16 = "%.[^%.]+$"
                  L14_14 = L14_14(L15_15, L16_16)
                  L15_15 = mp
                  L15_15 = L15_15.GetExtensionClass
                  L16_16 = L14_14
                  L15_15 = L15_15(L16_16)
                  if L15_15 ~= 4 then
                    L15_15 = string
                    L15_15 = L15_15.sub
                    L16_16 = L8_8
                    L17_17 = #L9_9
                    L17_17 = L17_17 + 1
                    L15_15 = L15_15(L16_16, L17_17)
                    L16_16 = L2_2[L15_15]
                    if L16_16 ~= nil then
                      L16_16 = table
                      L16_16 = L16_16.insert
                      L17_17 = L2_2[L15_15]
                      L16_16(L17_17, L18_18)
                      L16_16 = L2_2[L15_15]
                      L16_16 = #L16_16
                      if L16_16 >= 5 then
                        L16_16 = false
                        L17_17 = {}
                        L17_17.count = 0
                        for L21_21, L22_22 in L18_18(L19_19) do
                          if L23_23 ~= nil then
                            if L24_24 == nil then
                              L17_17[L23_23] = 1
                              L17_17.count = L24_24
                            end
                          end
                        end
                        if L18_18 > 4 then
                          L16_16 = true
                        end
                        L21_21 = L16_16
                        L21_21 = bm
                        L21_21 = L21_21.RelatedStringBMReport
                        L18_18(L19_19, L20_20, L21_21)
                        L21_21 = bm
                        L21_21 = L21_21.RelatedStringBMReport
                        L18_18(L19_19, L20_20, L21_21)
                        if L20_20 ~= nil then
                        else
                        end
                        L21_21 = table
                        L21_21 = L21_21.insert
                        L21_21(L22_22, L23_23)
                        L21_21 = table
                        L21_21 = L21_21.insert
                        L21_21(L22_22, L23_23)
                        L21_21 = table
                        L21_21 = L21_21.insert
                        L21_21(L22_22, L23_23)
                        L21_21 = table
                        L21_21 = L21_21.insert
                        L21_21(L22_22, L23_23)
                        L21_21 = "FileChain_MainSet:"
                        for L25_25, L26_26 in L22_22(L23_23) do
                          L27_27 = sigattr_tail
                          L27_27 = L27_27[L26_26]
                          L27_27 = L27_27.utf8p1
                          L28_28 = string
                          L28_28 = L28_28.find
                          L29_29 = L27_27
                          L30_30 = "\\[^\\]*$"
                          L28_28 = L28_28(L29_29, L30_30)
                          L28_28 = L28_28 or 0
                          L29_29 = string
                          L29_29 = L29_29.find
                          L30_30 = L27_27
                          L29_29 = L29_29(L30_30, ".", L28_28, true)
                          if L29_29 ~= nil then
                            L30_30 = string
                            L30_30 = L30_30.sub
                            L30_30 = L30_30(L27_27, L28_28 + 1, L29_29 - 1)
                            L21_21 = L21_21 .. crypto.CRC32Buffer(-1, L30_30, 0, #L30_30)
                            L21_21 = L21_21 .. ";" .. string.sub(L27_27, L29_29 + 1) .. ";"
                          end
                          L30_30 = sigattr_tail
                          L30_30 = L30_30[L26_26]
                          L27_27 = L30_30.utf8p2
                          L30_30 = string
                          L30_30 = L30_30.find
                          L30_30 = L30_30(L27_27, "\\[^\\]*$")
                          L28_28 = L30_30 or 0
                          L30_30 = string
                          L30_30 = L30_30.find
                          L30_30 = L30_30(L27_27, ".", L28_28, true)
                          L29_29 = L30_30
                          if L29_29 ~= nil then
                            L30_30 = string
                            L30_30 = L30_30.sub
                            L30_30 = L30_30(L27_27, L28_28 + 1, L29_29 - 1)
                            L21_21 = L21_21 .. crypto.CRC32Buffer(-1, L30_30, 0, #L30_30)
                            L21_21 = L21_21 .. ";" .. string.sub(L27_27, L29_29 + 1) .. ";"
                          end
                          L30_30 = table
                          L30_30 = L30_30.insert
                          L30_30(L18_18, sigattr_tail[L26_26].utf8p1)
                          L30_30 = table
                          L30_30 = L30_30.insert
                          L30_30(L18_18, sigattr_tail[L26_26].utf8p2)
                        end
                        for L27_27, L28_28 in L24_24(L25_25) do
                          L29_29 = L28_28.image_path
                          if L29_29 ~= nil then
                            L29_29 = bm
                            L29_29 = L29_29.add_related_process
                            L30_30 = L28_28.ppid
                            L29_29(L30_30)
                          end
                        end
                        for L27_27, L28_28 in L24_24(L25_25) do
                          L29_29 = L28_28.image_path
                          if L29_29 ~= nil then
                            L29_29 = bm
                            L29_29 = L29_29.add_related_process
                            L30_30 = L28_28.ppid
                            L29_29(L30_30)
                            L29_29 = TrackPidAndTechniqueBM
                            L30_30 = L28_28.ppid
                            L29_29(L30_30, "T1485", "susp_ransmware_childproc_type2")
                          end
                        end
                        L27_27 = bm
                        L27_27 = L27_27.RelatedStringBMReport
                        L24_24(L25_25, L26_26, L27_27)
                        L27_27 = L24_24
                        L28_28 = bm
                        L28_28 = L28_28.RelatedStringBMReport
                        L25_25(L26_26, L27_27, L28_28)
                        L27_27 = L24_24
                        L25_25(L26_26, L27_27)
                        L25_25()
                        L27_27 = 100
                        L25_25(L26_26, L27_27)
                        L27_27 = "T1486"
                        L28_28 = "susp_ransomware_type2"
                        L25_25(L26_26, L27_27, L28_28)
                        L25_25()
                        return L25_25
                      end
                    else
                      L16_16 = {L17_17}
                      L17_17 = L7_7
                      L2_2[L15_15] = L16_16
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
