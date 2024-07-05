local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L6_6 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2())
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\\system32(\\%l+\\%l+\\%l+%.dat)$"
L4_4 = L2_2(L3_3, L4_4)
if not L2_2 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.len
L6_6 = L4_4
L5_5 = L5_5(L6_6)
if L5_5 ~= 18 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_SCANREASON
L5_5 = L5_5(L6_6)
L6_6 = mp
L6_6 = L6_6.SCANREASON_ONMODIFIEDHANDLECLOSE
if L5_5 == L6_6 then
  L5_5 = mp
  L5_5 = L5_5.get_contextdata
  L6_6 = mp
  L6_6 = L6_6.CONTEXT_DATA_NEWLYCREATEDHINT
  L5_5 = L5_5(L6_6)
  if L5_5 == true then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = mp
    L6_6 = L6_6.get_contextdata
    L6_6 = L6_6(mp.CONTEXT_DATA_PROCESSNAME)
    L5_5 = L5_5(L6_6, L6_6(mp.CONTEXT_DATA_PROCESSNAME))
    L6_6 = string
    L6_6 = L6_6.lower
    L6_6 = L6_6(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
    if L5_5 ~= nil and L6_6 ~= nil then
      mp.ReportLowfi(MpCommon.PathToWin32Path(L6_6) .. "\\" .. L5_5, 279611152)
    end
  end
end
L5_5 = mp
L5_5 = L5_5.INFECTED
return L5_5
