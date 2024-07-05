local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = {}
    L1_1 = safeJsonDeserialize
    L1_1 = L1_1(L2_2)
    if not L2_2 then
      for L5_5 = 1, #L3_3 do
        L6_6 = L1_1.file_paths
        L6_6 = L6_6[L5_5]
        L6_6 = L6_6.path
        L7_7 = L1_1.file_paths
        L7_7 = L7_7[L5_5]
        L7_7 = L7_7.renamed_path
        L8_8 = isnull
        L9_9 = L6_6
        L8_8 = L8_8(L9_9)
        if not L8_8 then
          L8_8 = isnull
          L9_9 = L7_7
          L8_8 = L8_8(L9_9)
          if not L8_8 then
            L9_9 = L6_6
            L8_8 = L6_6.match
            L10_10 = "[^\\]+$"
            L8_8 = L8_8(L9_9, L10_10)
            L10_10 = L7_7
            L9_9 = L7_7.match
            L11_11 = "[^\\]+$"
            L9_9 = L9_9(L10_10, L11_11)
            L11_11 = L9_9
            L10_10 = L9_9.match
            L12_12 = "(.+)%..+"
            L10_10 = L10_10(L11_11, L12_12)
            L11_11 = L10_10
            L10_10 = L10_10.lower
            L10_10 = L10_10(L11_11)
            L12_12 = L8_8
            L11_11 = L8_8.match
            L11_11 = L11_11(L12_12, "(.+)%..+")
            L12_12 = L11_11
            L11_11 = L11_11.lower
            L11_11 = L11_11(L12_12)
            if L10_10 == L11_11 then
              L12_12 = L7_7.match
              L12_12 = L12_12(L7_7, "%.[^%.]+$")
              L12_12 = L12_12.lower
              L12_12 = L12_12(L12_12)
              if L12_12 and mp.GetExtensionClass(L12_12) == 0 then
                if L0_0[L12_12] ~= nil then
                  table.insert(L0_0[L12_12], 1)
                else
                  L0_0[L12_12] = {1}
                end
                L1_1.file_paths[L5_5].fileSize = sysio.GetFileSize(L7_7)
                L1_1.file_paths[L5_5].magic = sysio.ReadFile(L7_7, 0, 4)
              end
            end
          end
        end
      end
    end
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = L0_0[L5_5]
      L7_7 = #L7_7
      if L7_7 >= 4 then
        L1_1.rename_ext = L5_5
        L7_7 = safeJsonSerialize
        L8_8 = L1_1
        L7_7 = L7_7(L8_8)
        L8_8 = bm
        L8_8 = L8_8.add_related_string
        L9_9 = "genrn_ransom_meta"
        L10_10 = L7_7
        L11_11 = bm
        L11_11 = L11_11.RelatedStringBMReport
        L8_8(L9_9, L10_10, L11_11)
        L8_8 = bm
        L8_8 = L8_8.trigger_sig
        L9_9 = "GenericRansomware:ReplaceExtension"
        L10_10 = L7_7
        L8_8(L9_9, L10_10)
        L8_8 = mp
        L8_8 = L8_8.INFECTED
        return L8_8
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
