local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36
L0_0 = {}
L0_0[".zzz"] = true
L0_0[".couch"] = true
L0_0[".___"] = true
L0_0[".amq"] = true
L0_0[".aaaa"] = true
L0_0[".importing"] = true
L0_0[".yyy"] = true
L0_0[".____"] = true
L0_0[".xxxx"] = true
L1_1 = mp
L1_1 = L1_1.SIGATTR_LOG_SZ
L2_2 = {}
L3_3 = bm
L3_3 = L3_3.get_sig_count
L3_3 = L3_3()
for L7_7 = 1, L1_1 do
  if L8_8 == 16385 then
    L2_2[L8_8] = L7_7
  end
end
for L10_10 = 1, L1_1 do
  L11_11 = sigattr_tail
  L11_11 = L11_11[L10_10]
  L11_11 = L11_11.attribute
  if L11_11 == 16386 then
    L11_11 = sigattr_tail
    L11_11 = L11_11[L10_10]
    L11_11 = L11_11.utf8p2
    L12_12 = L11_11
    L11_11 = L11_11.lower
    L11_11 = L11_11(L12_12)
    L12_12 = sigattr_tail
    L12_12 = L12_12[L10_10]
    L12_12 = L12_12.utf8p1
    L13_13 = L12_12
    L12_12 = L12_12.lower
    L12_12 = L12_12(L13_13)
    L13_13 = L2_2[L12_12]
    if L13_13 == nil then
      L13_13 = L2_2[L11_11]
    elseif L13_13 ~= nil then
      L13_13 = L5_5[L11_11]
      if L13_13 == nil then
        L14_14 = L12_12
        L13_13 = L12_12.match
        L15_15 = "%.[^%.]+$"
        L13_13 = L13_13(L14_14, L15_15)
        if L13_13 then
          L14_14 = L0_0[L13_13]
          if L14_14 == nil then
            L14_14 = mp
            L14_14 = L14_14.GetExtensionClass
            L15_15 = L13_13
            L14_14 = L14_14(L15_15)
            if L14_14 == 0 then
              L15_15 = L11_11
              L14_14 = L11_11.match
              L16_16 = "%.[^%.]+$"
              L14_14 = L14_14(L15_15, L16_16)
              if L14_14 ~= nil then
                L15_15 = mp
                L15_15 = L15_15.bitand
                L16_16 = mp
                L16_16 = L16_16.GetExtensionClass
                L17_17 = L14_14
                L16_16 = L16_16(L17_17)
                L17_17 = 3
                L15_15 = L15_15(L16_16, L17_17)
                if L15_15 ~= 0 then
                  L16_16 = L11_11
                  L15_15 = L11_11.match
                  L17_17 = "^(.+)\\"
                  L15_15 = L15_15(L16_16, L17_17)
                  L17_17 = L12_12
                  L16_16 = L12_12.match
                  L18_18 = "^(.+)\\"
                  L16_16 = L16_16(L17_17, L18_18)
                  L18_18 = L11_11
                  L17_17 = L11_11.match
                  L19_19 = "[^\\]+$"
                  L17_17 = L17_17(L18_18, L19_19)
                  L19_19 = L12_12
                  L18_18 = L12_12.match
                  L20_20 = "[^\\]+$"
                  L18_18 = L18_18(L19_19, L20_20)
                  L20_20 = L18_18
                  L19_19 = L18_18.match
                  L21_21 = "(.+)%..+"
                  L19_19 = L19_19(L20_20, L21_21)
                  L20_20 = L19_19
                  L19_19 = L19_19.lower
                  L19_19 = L19_19(L20_20)
                  L21_21 = L17_17
                  L20_20 = L17_17.match
                  L22_22 = "(.+)%..+"
                  L20_20 = L20_20(L21_21, L22_22)
                  L21_21 = L20_20
                  L20_20 = L20_20.lower
                  L20_20 = L20_20(L21_21)
                  if L15_15 == L16_16 then
                    L22_22 = L12_12
                    L21_21 = L12_12.byte
                    L21_21 = L21_21(L22_22, L23_23)
                    if L21_21 ~= 58 then
                      L22_22 = L19_19
                      L21_21 = L19_19.find
                      L21_21 = L21_21(L22_22, L23_23, L24_24, L25_25)
                      if L21_21 == nil then
                        L5_5[L11_11] = 1
                        L21_21 = L2_2[L12_12]
                        if L21_21 ~= nil then
                          L21_21 = L2_2[L12_12]
                          L6_6[L10_10] = L21_21
                        else
                          L21_21 = L2_2[L11_11]
                          if L21_21 ~= nil then
                            L21_21 = L2_2[L11_11]
                            L6_6[L10_10] = L21_21
                          end
                        end
                        L21_21 = L4_4[L13_13]
                        if L21_21 ~= nil then
                          L21_21 = table
                          L21_21 = L21_21.insert
                          L22_22 = L4_4[L13_13]
                          L21_21(L22_22, L23_23)
                        else
                          L21_21 = {L22_22}
                          L22_22 = L10_10
                          L4_4[L13_13] = L21_21
                        end
                        L21_21 = L4_4[L13_13]
                        L21_21 = #L21_21
                        if L21_21 >= 5 then
                          L21_21 = false
                          L22_22 = {}
                          L22_22.count = 0
                          for L26_26, L27_27 in L23_23(L24_24) do
                            if L28_28 ~= nil then
                              if L29_29 == nil then
                                L22_22[L28_28] = 1
                                L22_22.count = L29_29
                              end
                            end
                          end
                          if L23_23 > 4 then
                            L21_21 = true
                          end
                          L26_26 = L21_21
                          L26_26 = bm
                          L26_26 = L26_26.RelatedStringBMReport
                          L23_23(L24_24, L25_25, L26_26)
                          L26_26 = bm
                          L26_26 = L26_26.RelatedStringBMReport
                          L23_23(L24_24, L25_25, L26_26)
                          L26_26 = L25_25
                          L26_26 = bm
                          L26_26 = L26_26.get_current_process_startup_info
                          L26_26 = L26_26()
                          if L26_26 ~= nil then
                            L26_26 = L26_26.ppid
                          else
                            L26_26 = -1
                          end
                          L23_23.cur_image_path = L25_25
                          L23_23.proc_info = L26_26
                          L23_23.appended_ext = L13_13
                          L23_23.magic_mismatch = L21_21
                          L27_27 = "FileChain_MainSet:"
                          for L31_31, L32_32 in L28_28(L29_29) do
                            L33_33 = sigattr_tail
                            L33_33 = L33_33[L32_32]
                            L33_33 = L33_33.utf8p1
                            L34_34 = string
                            L34_34 = L34_34.find
                            L35_35 = L33_33
                            L36_36 = "\\[^\\]*$"
                            L34_34 = L34_34(L35_35, L36_36)
                            L34_34 = L34_34 or 0
                            L35_35 = string
                            L35_35 = L35_35.find
                            L36_36 = L33_33
                            L35_35 = L35_35(L36_36, ".", L34_34, true)
                            if L35_35 ~= nil then
                              L36_36 = string
                              L36_36 = L36_36.sub
                              L36_36 = L36_36(L33_33, L34_34 + 1, L35_35 - 1)
                              L27_27 = L27_27 .. crypto.CRC32Buffer(-1, L36_36, 0, #L36_36)
                              L27_27 = L27_27 .. ";" .. string.sub(L33_33, L35_35 + 1) .. ";"
                            end
                            L36_36 = sigattr_tail
                            L36_36 = L36_36[L32_32]
                            L33_33 = L36_36.utf8p2
                            L36_36 = string
                            L36_36 = L36_36.find
                            L36_36 = L36_36(L33_33, "\\[^\\]*$")
                            L34_34 = L36_36 or 0
                            L36_36 = string
                            L36_36 = L36_36.find
                            L36_36 = L36_36(L33_33, ".", L34_34, true)
                            L35_35 = L36_36
                            if L35_35 ~= nil then
                              L36_36 = string
                              L36_36 = L36_36.sub
                              L36_36 = L36_36(L33_33, L34_34 + 1, L35_35 - 1)
                              L27_27 = L27_27 .. crypto.CRC32Buffer(-1, L36_36, 0, #L36_36)
                              L27_27 = L27_27 .. ";" .. string.sub(L33_33, L35_35 + 1) .. ";"
                            end
                            L36_36 = table
                            L36_36 = L36_36.insert
                            L36_36(L24_24, sigattr_tail[L32_32].utf8p1)
                            L36_36 = table
                            L36_36 = L36_36.insert
                            L36_36(L24_24, sigattr_tail[L32_32].utf8p2)
                          end
                          L23_23.file_list = L24_24
                          for L33_33, L34_34 in L30_30(L31_31) do
                            L35_35 = L34_34.image_path
                            if L35_35 ~= nil then
                              L35_35 = bm
                              L35_35 = L35_35.add_related_process
                              L36_36 = L34_34.ppid
                              L35_35(L36_36)
                            end
                          end
                          for L33_33, L34_34 in L30_30(L31_31) do
                            L35_35 = L34_34.image_path
                            if L35_35 ~= nil then
                              L35_35 = bm
                              L35_35 = L35_35.add_related_process
                              L36_36 = L34_34.ppid
                              L35_35(L36_36)
                              L35_35 = TrackPidAndTechniqueBM
                              L36_36 = L34_34.ppid
                              L35_35(L36_36, "T1485", "susp_ransomware_childproc_type2")
                            end
                          end
                          L33_33 = bm
                          L33_33 = L33_33.RelatedStringBMReport
                          L30_30(L31_31, L32_32, L33_33)
                          L33_33 = L30_30
                          L34_34 = bm
                          L34_34 = L34_34.RelatedStringBMReport
                          L31_31(L32_32, L33_33, L34_34)
                          L33_33 = L30_30
                          L31_31(L32_32, L33_33)
                          L31_31()
                          L33_33 = 100
                          L31_31(L32_32, L33_33)
                          L33_33 = "T1486"
                          L34_34 = "susp_ransomware_type6"
                          L31_31(L32_32, L33_33, L34_34)
                          L31_31()
                          L31_31()
                          L33_33 = L3_3
                          L34_34 = bm
                          L34_34 = L34_34.RelatedStringBMReport
                          L31_31(L32_32, L33_33, L34_34)
                          return L31_31
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
return L7_7
