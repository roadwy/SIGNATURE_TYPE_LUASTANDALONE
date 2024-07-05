local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
  L1_1 = {}
  L1_1["payload.exe"] = true
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILENAME
  L6_6 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L3_3(L4_4))
  L3_3 = L1_1[L2_2]
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_FILEPATH
    L6_6 = L4_4(L5_5)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L4_4(L5_5))
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L3_3
    L6_6 = "\\local settings\\temp"
    L4_4 = L4_4(L5_5, L6_6, 1, true)
    if not L4_4 then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3
      L6_6 = "\\appdata\\local\\temp"
      L4_4 = L4_4(L5_5, L6_6, 1, true)
    elseif L4_4 then
      L4_4, L5_5, L6_6 = nil, nil, nil
      L6_6 = mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)
      L4_4 = string.lower(L6_6)
      L5_5 = mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
      if L4_4 == nil or L5_5 == nil then
        return mp.CLEAN
      end
      if string.sub(L4_4, -4) == ".exe" then
        mp.ReportLowfi(MpCommon.PathToWin32Path(L5_5) .. "\\" .. L6_6, 1932906471)
      end
    end
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
