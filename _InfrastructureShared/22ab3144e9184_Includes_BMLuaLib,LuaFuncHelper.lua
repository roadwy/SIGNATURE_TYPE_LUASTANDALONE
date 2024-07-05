local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25
L0_0 = 5
L1_1 = 20
L2_2 = mp
L2_2 = L2_2.SIGATTR_LOG_SZ
L3_3 = {}
L4_4 = {}
L5_5 = 0
L6_6 = {}
L6_6[".txt"] = true
L6_6[".html"] = true
L6_6[".hta"] = true
for L10_10 = L2_2, 1, -1 do
  L11_11 = sigattr_tail
  L11_11 = L11_11[L10_10]
  L11_11 = L11_11.attribute
  if L11_11 == 16384 then
    L11_11 = sigattr_tail
    L11_11 = L11_11[L10_10]
    L11_11 = L11_11.utf8p1
    L12_12 = L11_11
    L11_11 = L11_11.byte
    L13_13 = 1
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 ~= 37 then
      L11_11 = sigattr_tail
      L11_11 = L11_11[L10_10]
      L11_11 = L11_11.utf8p1
      L12_12 = L11_11
      L11_11 = L11_11.lower
      L11_11 = L11_11(L12_12)
      L13_13 = L11_11
      L12_12 = L11_11.match
      L14_14 = "[^\\]+$"
      L12_12 = L12_12(L13_13, L14_14)
      L13_13 = isnull
      L14_14 = L12_12
      L13_13 = L13_13(L14_14)
      if not L13_13 then
        L14_14 = L12_12
        L13_13 = L12_12.match
        L13_13 = L13_13(L14_14, L15_15)
        L14_14 = isnull
        L14_14 = L14_14(L15_15)
        if not L14_14 then
          L14_14 = L6_6[L13_13]
          if L14_14 == true then
            L14_14 = L3_3[L12_12]
            if L14_14 ~= nil then
              L14_14 = table
              L14_14 = L14_14.insert
              L14_14(L15_15, L16_16)
            else
              L14_14 = {L15_15}
              L3_3[L12_12] = L14_14
            end
            L14_14 = L3_3[L12_12]
            L14_14 = #L14_14
            if L0_0 <= L14_14 then
              L14_14 = {}
              for L18_18 = 1, #L16_16 do
                L19_19 = sysio
                L19_19 = L19_19.GetFileSize
                L20_20 = L3_3[L12_12]
                L20_20 = L20_20[L18_18]
                L19_19 = L19_19(L20_20)
                if L19_19 < 400 or L19_19 > 8000 then
                  L3_3[L12_12] = nil
                  break
                end
                L20_20 = L3_3[L12_12]
                L20_20 = L20_20[L18_18]
                L20_20 = L4_4[L20_20]
                if L20_20 ~= nil then
                  break
                else
                  L20_20 = L3_3[L12_12]
                  L20_20 = L20_20[L18_18]
                  L4_4[L20_20] = true
                end
                L20_20 = L14_14[L19_19]
                if L20_20 ~= nil then
                  L20_20 = L14_14[L19_19]
                  L20_20 = L20_20 + 1
                  L14_14[L19_19] = L20_20
                else
                  L14_14[L19_19] = 1
                end
                L20_20 = L14_14[L19_19]
                L21_21 = L3_3[L12_12]
                L21_21 = #L21_21
                if L20_20 == L21_21 then
                  L20_20 = bm
                  L20_20 = L20_20.get_current_process_startup_info
                  L20_20 = L20_20()
                  L21_21 = string
                  L21_21 = L21_21.lower
                  L22_22 = MpCommon
                  L22_22 = L22_22.PathToWin32Path
                  L23_23 = bm
                  L23_23 = L23_23.get_imagepath
                  L25_25 = L23_23()
                  L25_25 = L22_22(L23_23, L24_24, L25_25, L23_23())
                  L21_21 = L21_21(L22_22, L23_23, L24_24, L25_25, L22_22(L23_23, L24_24, L25_25, L23_23()))
                  L22_22 = ""
                  if L20_20 ~= nil then
                    L22_22 = L20_20.command_line
                  else
                    L20_20 = -1
                  end
                  L23_23 = {}
                  L23_23.cur_image_path = L21_21
                  L23_23.cmd_line = L22_22
                  L24_24 = {}
                  L24_24.file_size = L19_19
                  L25_25 = L3_3[L12_12]
                  L24_24.file_paths = L25_25
                  L24_24.proc_meta_info = L23_23
                  L25_25 = safeJsonSerialize
                  L25_25 = L25_25(L24_24)
                  bm.add_related_string("gen_ransom_note", L25_25, bm.RelatedStringBMReport)
                  sms_untrusted_process()
                  return mp.INFECTED
                end
              end
            end
            L5_5 = L5_5 + 1
          end
        end
      end
    end
  end
end
if L1_1 < L5_5 then
  L7_7(L8_8, L9_9)
end
return L7_7
