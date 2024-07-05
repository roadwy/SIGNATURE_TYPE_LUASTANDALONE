local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 24 or L0_0 > 255 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitand
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 8
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 16777215
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 6070466 then
  L1_1 = mp
  L1_1 = L1_1.bitand
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L3_3 = headerpage
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = 16777215
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= 6070466 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2, L3_3, L4_4 = nil, nil, nil
L5_5 = string
L5_5 = L5_5.find
L6_6 = L1_1
L7_7 = "\160\\-({?[%w%s%p]+}?)(%.{?[%w%s%-]+}?)\"?,[%w%p%s]+%z"
L4_4, L5_5 = nil, L5_5(L6_6, L7_7)
L4_4, L6_6 = nil, L5_5(L6_6, L7_7)
L4_4, L7_7 = nil, L5_5(L6_6, L7_7)
L3_3 = L7_7
_ = L6_6
L2_2 = L5_5
if L2_2 then
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L6_6 = {}
  L6_6[".exe"] = true
  L6_6[".dll"] = true
  L6_6[".cpl"] = true
  L6_6[".ocx"] = true
  L7_7 = L6_6[L5_5]
  if L7_7 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = nil
  if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    L7_7 = MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  end
  if L7_7 == nil then
    L7_7 = mp.getfilename():match("(.+)\\[^\\]+$")
  end
  if L7_7 ~= nil then
    mp.ReportLowfi(L7_7 .. "\\\194\160\\" .. L3_3 .. L4_4, 2406282551)
    mp.ReportLowfi(L7_7 .. "\\\194\160\\IndexerVolumeGuid", 2012828607)
  end
  return mp.INFECTED
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
