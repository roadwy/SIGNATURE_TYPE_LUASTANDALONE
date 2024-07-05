local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = {}
L4_4 = 0
L5_5 = 0
L6_6 = 5
L7_7 = 0
for L11_11 = 1, L0_0 do
  if L13_13 == 16385 then
    if L13_13 > 5 then
      L15_15 = 1
      if L13_13 ~= 37 and L12_12 then
        L15_15 = "TotalSizeAppend:0"
        if L13_13 == nil then
          L15_15 = L13_13
          if L14_14 ~= nil then
            L15_15 = L2_2[L14_14]
            if L15_15 == nil then
              L2_2[L2_2] = L11_11
              L5_5 = L5_5 + 1
            end
            L15_15 = L3_3[L13_13]
            if L15_15 == nil then
              L3_3[L13_13] = L11_11
              L15_15 = {}
              for L19_19, L20_20 in L16_16(L17_17, L18_18) do
                L15_15[L19_19] = L20_20
              end
              L19_19 = L15_15.TotalSizeAppend
              if L16_16 ~= nil and L17_17 ~= nil and L18_18 ~= nil and L16_16 > 0 and L17_17 > 0 and L17_17 > L18_18 and L18_18 > 5 and L18_18 < 2000 then
                L1_1[L11_11] = L18_18
                L7_7 = L7_7 + L18_18
                L4_4 = L4_4 + 1
              end
            end
          end
        end
      end
    end
  end
end
if L7_7 > 0 and L6_6 <= L4_4 and L5_5 >= 3 then
  L11_11 = 0
  for L15_15, L16_16 in L12_12(L13_13) do
    if L17_17 >= L18_18 then
      if L17_17 <= L18_18 then
        L11_11 = L11_11 + 1
        L19_19 = sigattr_tail
        L19_19 = L19_19[L15_15]
        L19_19 = L19_19.utf8p1
        L18_18.path = L19_19
        L18_18.appended_size = L16_16
        L19_19 = table
        L19_19 = L19_19.insert
        L20_20 = L8_8
        L21_21 = L18_18
        L19_19(L20_20, L21_21)
        if L6_6 <= L11_11 then
          L19_19 = string
          L19_19 = L19_19.lower
          L20_20 = MpCommon
          L20_20 = L20_20.PathToWin32Path
          L21_21 = bm
          L21_21 = L21_21.get_imagepath
          L30_30 = L21_21()
          L30_30 = L20_20(L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L21_21())
          L19_19 = L19_19(L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L20_20(L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L21_21()))
          L20_20 = false
          L21_21 = -1
          L22_22 = -1
          L23_23 = -1
          L24_24 = -1
          L25_25 = {}
          if not L26_26 then
            L20_20 = L26_26
            L24_24 = L26_26
            if L24_24 ~= nil then
              for L29_29, L30_30 in L26_26(L27_27) do
                if tonumber(string.match(L30_30, "^Age:([0-9]+)$")) ~= nil and L21_21 < tonumber(string.match(L30_30, "^Age:([0-9]+)$")) then
                  L21_21 = tonumber(string.match(L30_30, "^Age:([0-9]+)$"))
                end
                if tonumber(string.match(L30_30, "^Prevalence:([0-9]+)$")) ~= nil and L23_23 < tonumber(string.match(L30_30, "^Prevalence:([0-9]+)$")) then
                  L23_23 = tonumber(string.match(L30_30, "^Prevalence:([0-9]+)$"))
                end
              end
            end
            L22_22 = L26_26
            if L26_26 and L22_22 ~= 0 then
              L22_22 = L26_26 - L27_27
            else
              L22_22 = -1
            end
          else
            L19_19 = ""
          end
          if L26_26 ~= nil then
          else
          end
          L28_28.cur_image_path = L19_19
          L28_28.cmd_line = L27_27
          L28_28.newpe_nocert = L20_20
          L28_28.elapsed_time = L22_22
          L28_28.file_age = L21_21
          L28_28.file_prevlence = L23_23
          L25_25.avg_append_size = L9_9
          L25_25.file_paths = L8_8
          L25_25.proc_meta_info = L28_28
          L29_29 = safeJsonSerialize
          L30_30 = L25_25
          L29_29 = L29_29(L30_30)
          L30_30 = bm
          L30_30 = L30_30.add_related_string
          L30_30("genfd_ransom_meta", L29_29, bm.RelatedStringBMReport)
          L30_30 = bm
          L30_30 = L30_30.trigger_sig
          L30_30("GenericRansomware:FileAppendAvg", L29_29)
          L30_30 = reportTimingData
          L30_30()
          L30_30 = sms_untrusted_process
          L30_30()
          L30_30 = mp
          L30_30 = L30_30.INFECTED
          return L30_30
        end
      end
    end
  end
end
return L9_9
