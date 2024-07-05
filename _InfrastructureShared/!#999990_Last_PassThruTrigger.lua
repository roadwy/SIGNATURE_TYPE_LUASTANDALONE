local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L0_0(L1_1, L2_2)
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_CONTROL_GUID
L3_3 = L2_2(L3_3, L4_4)
L4_4 = pcall
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_CONTROL_VERSION
L5_5 = L4_4(L5_5, L6_6)
L6_6 = false
L7_7 = false
if L2_2 then
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "6bf52a52%-394a%-11d3%-b153%-00c04f79faa6"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.FALSE
    return L8_8
  end
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "22d6f312%-b0f6%-11d0%-94ab%-0080c74c7e95"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.FALSE
    return L8_8
  end
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "6e6b5b2a%-ec7e%-4f25%-95bb%-504bb437e95e"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.FALSE
    return L8_8
  end
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "5512d122%-5cc6%-11cf%-8d67%-00aa00bdce1d"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.FALSE
    return L8_8
  end
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 and L4_4 then
    L8_8 = mp
    L8_8 = L8_8.bsplit
    L9_9 = L5_5
    L10_10 = 16
    L11_11 = L8_8(L9_9, L10_10)
    if L11_11 == 32 and L10_10 == 0 and L9_9 == 0 and L8_8 >= 445 then
      L6_6 = true
    end
  end
  L8_8 = string
  L8_8 = L8_8.match
  L9_9 = L3_3
  L10_10 = "dfeaf541%-f3e1%-4c24%-acac%-99c30715084a"
  L8_8 = L8_8(L9_9, L10_10)
  if L8_8 and L4_4 then
    L8_8 = mp
    L8_8 = L8_8.bsplit
    L9_9 = L5_5
    L10_10 = 16
    L11_11 = L8_8(L9_9, L10_10)
    if L11_11 == 5 and L10_10 == 1 and L9_9 == 50918 then
      L7_7 = true
    end
  end
  if L0_0 then
    L8_8 = mp
    L8_8 = L8_8.SCANREASON_VALIDATION_PRESCAN
    if L1_1 ~= L8_8 and L6_6 == false and L7_7 == false then
      L8_8 = mp
      L8_8 = L8_8.aggregate_mpattribute
      L9_9 = "Context:DataControlGuid.B"
      L8_8(L9_9)
    end
  end
end
if L0_0 then
  L8_8 = mp
  L8_8 = L8_8.SCANREASON_VALIDATION_PRESCAN
  if L1_1 ~= L8_8 and L6_6 == false then
    L8_8 = pcall
    L9_9 = mp
    L9_9 = L9_9.get_contextdata
    L10_10 = mp
    L10_10 = L10_10.CONTEXT_DATA_URL
    L9_9 = L8_8(L9_9, L10_10)
    if L8_8 then
      L10_10 = string
      L10_10 = L10_10.match
      L11_11 = L9_9
      L10_10 = L10_10(L11_11, "[/.]google%.com")
      if L10_10 then
        L10_10 = mp
        L10_10 = L10_10.aggregate_mpattribute
        L11_11 = "Context:DataUrl"
        L10_10(L11_11)
      end
    end
    L10_10 = pcall
    L11_11 = mp
    L11_11 = L11_11.get_contextdata
    L11_11 = L10_10(L11_11, mp.CONTEXT_DATA_REFERRERURL)
    if L10_10 then
      if string.match(L11_11, "google%.co") then
        mp.aggregate_mpattribute("Context:DataReferrerUrl")
      end
      if string.match(L11_11, "baidu%.com") then
        mp.aggregate_mpattribute("Context:DataReferrerUrl")
      end
      if string.match(L11_11, "yandex%.ru") then
        mp.aggregate_mpattribute("Context:DataReferrerUrl")
      end
      if string.match(L11_11, "bing%.co") then
        mp.aggregate_mpattribute("Context:DataReferrerUrlBing")
      end
      if string.match(L11_11, "/a[fp]u.php?.-id=%d") then
        mp.aggregate_mpattribute("Context:DataReferrerUrlAds")
      end
    end
  end
end
L8_8 = mp
L8_8 = L8_8.aggregate_mpattribute
L9_9 = "//MpIsIEVScan"
L8_8(L9_9)
L8_8 = mp
L8_8 = L8_8.TRUE
return L8_8
