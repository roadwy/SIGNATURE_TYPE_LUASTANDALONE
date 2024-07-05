local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
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
L15_15 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L1_1(L2_2, L3_3))
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L4_4 = "\\tasks"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "[^ ]+ +[^ ]+$"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == nil then
    L2_2 = mp
    L2_2 = L2_2.get_mpattribute
    L3_3 = "BM_XML_FILE"
    L2_2 = L2_2(L3_3)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.get_mpattribute
      L3_3 = "MpInternal_IsPliScan"
      L2_2 = L2_2(L3_3)
      if not L2_2 then
        L2_2 = mp
        L2_2 = L2_2.get_mpattribute
        L3_3 = "MpAlwaysLowfiMatch"
        L2_2 = L2_2(L3_3)
        if not L2_2 then
          L2_2 = mp
          L2_2 = L2_2.GetBruteMatchData
          L2_2 = L2_2()
          L3_3 = L2_2.match_offset
          L3_3 = L3_3 + 1
          L4_4 = 128
          L5_5 = ""
          L6_6 = L2_2.is_header
          if L6_6 then
            L6_6 = tostring
            L7_7 = headerpage
            L6_6 = L6_6(L7_7)
            L7_7 = L6_6
            L6_6 = L6_6.sub
            L8_8 = L3_3
            L6_6 = L6_6(L7_7, L8_8, L9_9)
            L5_5 = L6_6
          else
            L6_6 = tostring
            L7_7 = footerpage
            L6_6 = L6_6(L7_7)
            L7_7 = L6_6
            L6_6 = L6_6.sub
            L8_8 = L3_3
            L6_6 = L6_6(L7_7, L8_8, L9_9)
            L5_5 = L6_6
          end
          L6_6 = string
          L6_6 = L6_6.lower
          L7_7 = L5_5
          L6_6 = L6_6(L7_7)
          L7_7 = {
            L8_8,
            L9_9,
            L10_10,
            L11_11,
            L12_12,
            L13_13,
            L14_14,
            L15_15,
            "/default%.aspx%?",
            "localhost",
            "%:[0-9]+/",
            "%.co%.kr",
            "%.cf/",
            "cleveraccounts%.com",
            "syncfx%.com",
            "pass-pdam%.com"
          }
          L8_8 = "youtube-dl%.exe"
          L12_12 = "microsoft%.com"
          L13_13 = "/feedstation/"
          L14_14 = "=updateindex"
          L15_15 = "/iplog%.php%?"
          L8_8 = #L7_7
          for L12_12 = 1, L8_8 do
            L13_13 = string
            L13_13 = L13_13.match
            L14_14 = L6_6
            L15_15 = L7_7[L12_12]
            L13_13 = L13_13(L14_14, L15_15)
            if L13_13 ~= nil then
              L13_13 = mp
              L13_13 = L13_13.CLEAN
              return L13_13
            end
          end
          L12_12 = 1
          L13_13 = true
          if L9_9 ~= nil then
            L12_12 = L9_9
            L13_13 = L4_4 - 1
            L5_5 = L10_10
            L12_12 = "<"
            L13_13 = 1
            L14_14 = true
            if L11_11 ~= nil then
              L13_13 = L5_5
              L12_12 = L5_5.find
              L14_14 = " "
              L15_15 = 1
              L13_13 = L12_12(L13_13, L14_14, L15_15, true)
              L14_14 = ""
              if L13_13 ~= nil and L11_11 > L13_13 then
                L15_15 = L5_5.sub
                L15_15 = L15_15(L5_5, 1, L13_13 - 1)
                L14_14 = L15_15
              else
                L15_15 = L5_5.sub
                L15_15 = L15_15(L5_5, 1, L11_11 - 1)
                L14_14 = L15_15
              end
              L15_15 = MpCommon
              L15_15 = L15_15.Base64Encode
              L15_15 = L15_15(L14_14)
              set_research_data("taskRenamedMsiUrl", L15_15, false)
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
