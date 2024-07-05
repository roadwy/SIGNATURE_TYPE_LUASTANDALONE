local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONOPEN
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L1_1 == L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILENAME
  L5_5 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4))
  L0_0 = L2_2
  if L0_0 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L3_3 = L0_0
  L2_2 = L0_0.sub
  L4_4 = -4
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  if L2_2 ~= ".lck" then
    L3_3 = L0_0
    L2_2 = L0_0.sub
    L4_4 = -4
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
  elseif L2_2 == ".idx" then
    L2_2 = nil
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_FILEPATH
    L5_5 = L4_4(L5_5)
    L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5))
    L2_2 = L3_3
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L5_5 = "\\application data"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L5_5 = "\\appdata\\roaming"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
      if not L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L2_2
        L5_5 = "\\appdata\\local"
        L3_3 = L3_3(L4_4, L5_5, 1, true)
      end
    elseif L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L0_0
      L5_5 = "%w+%.lck"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
      if not L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L0_0
        L5_5 = "%w+%.idx"
        L3_3 = L3_3(L4_4, L5_5, 1, true)
      elseif L3_3 then
        L3_3, L4_4, L5_5 = nil, nil, nil
        L5_5 = mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)
        L3_3 = string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
        L4_4 = mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
        if L3_3 == nil or L4_4 == nil then
          return mp.CLEAN
        end
        if string.sub(L3_3, -4) == ".exe" then
          mp.ReportLowfi(MpCommon.PathToWin32Path(L4_4) .. "\\" .. L5_5, 2068892749)
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
