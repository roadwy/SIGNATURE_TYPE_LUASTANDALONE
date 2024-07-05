local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\software\\microsoft\\asrfix"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = 1
L4_4 = 4
L1_1 = L1_1(L2_2, L3_3, L4_4)
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = sysio
  L3_3 = L3_3.GetRegValueAsDword
  L4_4 = L2_2
  L5_5 = "scriptresult"
  L3_3 = L3_3(L4_4, L5_5)
  L4_4 = sysio
  L4_4 = L4_4.GetRegValueAsDword
  L5_5 = L2_2
  L6_6 = "hklmfailure"
  L4_4 = L4_4(L5_5, L6_6)
  L5_5 = sysio
  L5_5 = L5_5.GetRegValueAsDword
  L6_6 = L2_2
  L7_7 = "hklmsuccess"
  L5_5 = L5_5(L6_6, L7_7)
  L6_6 = sysio
  L6_6 = L6_6.GetRegValueAsDword
  L7_7 = L2_2
  L8_8 = "hkuappfailure"
  L6_6 = L6_6(L7_7, L8_8)
  L7_7 = sysio
  L7_7 = L7_7.GetRegValueAsDword
  L8_8 = L2_2
  L9_9 = "hkuappsuccess"
  L7_7 = L7_7(L8_8, L9_9)
  L8_8 = sysio
  L8_8 = L8_8.GetRegValueAsDword
  L9_9 = L2_2
  L10_10 = "numlinksfound"
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = sysio
  L9_9 = L9_9.GetRegValueAsString
  L10_10 = L2_2
  L11_11 = "scripterror"
  L9_9 = L9_9(L10_10, L11_11)
  L10_10 = sysio
  L10_10 = L10_10.GetRegValueAsString
  L11_11 = L2_2
  L12_12 = "timestamp"
  L10_10 = L10_10(L11_11, L12_12)
  L11_11 = sysio
  L11_11 = L11_11.GetRegValueAsDword
  L12_12 = L2_2
  L13_13 = "version"
  L11_11 = L11_11(L12_12, L13_13)
  if L3_3 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=scriptresult=%d"
    L14_14 = L13_13(L14_14, L3_3)
    L12_12(L13_13, L14_14, L13_13(L14_14, L3_3))
  end
  if L4_4 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=hklmfailure=%d"
    L14_14 = L13_13(L14_14, L4_4)
    L12_12(L13_13, L14_14, L13_13(L14_14, L4_4))
  end
  if L5_5 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=hklmsuccess=%d"
    L14_14 = L13_13(L14_14, L5_5)
    L12_12(L13_13, L14_14, L13_13(L14_14, L5_5))
  end
  if L6_6 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=hkuappfailure=%d"
    L14_14 = L13_13(L14_14, L6_6)
    L12_12(L13_13, L14_14, L13_13(L14_14, L6_6))
  end
  if L7_7 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=hkuappsuccess=%d"
    L14_14 = L13_13(L14_14, L7_7)
    L12_12(L13_13, L14_14, L13_13(L14_14, L7_7))
  end
  if L8_8 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=numlinksfound=%d"
    L14_14 = L13_13(L14_14, L8_8)
    L12_12(L13_13, L14_14, L13_13(L14_14, L8_8))
  end
  if L9_9 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=scripterror=%s"
    L14_14 = L13_13(L14_14, L9_9)
    L12_12(L13_13, L14_14, L13_13(L14_14, L9_9))
  end
  if L10_10 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=timestamp=%s"
    L14_14 = L13_13(L14_14, L10_10)
    L12_12(L13_13, L14_14, L13_13(L14_14, L10_10))
  end
  if L11_11 then
    L12_12 = mp
    L12_12 = L12_12.set_mpattribute
    L13_13 = string
    L13_13 = L13_13.format
    L14_14 = "MpInternal_researchdata=version=%d"
    L14_14 = L13_13(L14_14, L11_11)
    L12_12(L13_13, L14_14, L13_13(L14_14, L11_11))
  end
  if L1_1 == "hkcu" then
    L12_12 = sysio
    L12_12 = L12_12.GetRegValueAsDword
    L13_13 = L2_2
    L14_14 = "mprecovertoolexecstatus"
    L12_12 = L12_12(L13_13, L14_14)
    L13_13 = sysio
    L13_13 = L13_13.GetRegValueAsDword
    L14_14 = L2_2
    L13_13 = L13_13(L14_14, "mprecoversuccesscount")
    L14_14 = sysio
    L14_14 = L14_14.GetRegValueAsString
    L14_14 = L14_14(L2_2, "mptaskbarrecoverversion")
    if L12_12 then
      mp.set_mpattribute(string.format("MpInternal_researchdata=mprecovertoolexecstatus=%d", L12_12))
    end
    if L12_12 then
      mp.set_mpattribute(string.format("MpInternal_researchdata=mprecoversuccesscount=%d", L13_13))
    end
    if L12_12 then
      mp.set_mpattribute(string.format("MpInternal_researchdata=mptaskbarrecoverversion=%s", L14_14))
    end
  end
  L12_12 = mp
  L12_12 = L12_12.INFECTED
  return L12_12
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
