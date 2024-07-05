local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_PATH
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L11_11 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2, L3_3))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L3_3 = "\\tasks"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "BM_XML_FILE"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "MpInternal_IsPliScan"
    L1_1 = L1_1(L2_2)
    if not L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L2_2 = "MpAlwaysLowfiMatch"
      L1_1 = L1_1(L2_2)
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.GetBruteMatchData
        L1_1 = L1_1()
        L2_2 = L1_1.match_offset
        L2_2 = L2_2 + 1
        L3_3 = 128
        L4_4 = ""
        L5_5 = L1_1.is_header
        if L5_5 then
          L5_5 = tostring
          L6_6 = headerpage
          L5_5 = L5_5(L6_6)
          L6_6 = L5_5
          L5_5 = L5_5.sub
          L7_7 = L2_2
          L8_8 = L2_2 + L3_3
          L5_5 = L5_5(L6_6, L7_7, L8_8)
          L4_4 = L5_5
        else
          L5_5 = tostring
          L6_6 = footerpage
          L5_5 = L5_5(L6_6)
          L6_6 = L5_5
          L5_5 = L5_5.sub
          L7_7 = L2_2
          L8_8 = L2_2 + L3_3
          L5_5 = L5_5(L6_6, L7_7, L8_8)
          L4_4 = L5_5
        end
        L6_6 = L4_4
        L5_5 = L4_4.find
        L7_7 = "http"
        L8_8 = 1
        L9_9 = true
        L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
        if L5_5 ~= nil then
          L7_7 = L4_4
          L6_6 = L4_4.sub
          L8_8 = L5_5
          L9_9 = L3_3 - 1
          L6_6 = L6_6(L7_7, L8_8, L9_9)
          L4_4 = L6_6
          L7_7 = L4_4
          L6_6 = L4_4.find
          L8_8 = "<"
          L9_9 = 1
          L10_10 = true
          L7_7 = L6_6(L7_7, L8_8, L9_9, L10_10)
          if L7_7 ~= nil then
            L9_9 = L4_4
            L8_8 = L4_4.find
            L10_10 = " "
            L11_11 = 1
            L9_9 = L8_8(L9_9, L10_10, L11_11, true)
            L10_10 = ""
            if L9_9 ~= nil and L7_7 > L9_9 then
              L11_11 = L4_4.sub
              L11_11 = L11_11(L4_4, 1, L9_9 - 1)
              L10_10 = L11_11
            else
              L11_11 = L4_4.sub
              L11_11 = L11_11(L4_4, 1, L7_7 - 1)
              L10_10 = L11_11
            end
            L11_11 = MpCommon
            L11_11 = L11_11.Base64Encode
            L11_11 = L11_11(L10_10)
            set_research_data("taskMsiUrl", L11_11, false)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
