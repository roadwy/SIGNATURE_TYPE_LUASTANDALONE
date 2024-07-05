local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_FILENAME
    L1_1 = L1_1(L2_2)
    if L1_1 ~= "appdataFr3.bin" then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_FILEPATH
    L4_4 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L3_3(L4_4))
    L4_4 = L2_2
    L3_3 = L2_2.sub
    L3_3 = L3_3(L4_4, -17)
    if L3_3 ~= "\\application data" then
      L4_4 = L2_2
      L3_3 = L2_2.sub
      L3_3 = L3_3(L4_4, -16)
      if L3_3 ~= "\\appdata\\roaming" then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
    end
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L3_3 = L3_3(L4_4)
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
    mp.ReportLowfi(MpCommon.PathToWin32Path(L4_4) .. "\\" .. L3_3, 3091388344)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
