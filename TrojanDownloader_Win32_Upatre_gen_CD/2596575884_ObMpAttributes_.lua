local L0_0, L1_1, L2_2, L3_3
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
    L1_1 = peattributes
    L1_1 = L1_1.isdll
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 < 17920 or L1_1 > 44288 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = MpCommon
    L3_3 = L3_3.PathToWin32Path
    L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    L2_2 = L2_2(L3_3, L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)))
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
    if string.sub(L3_3, -4) == ".exe" and L2_2:sub(-5) == "\\temp" and L3_3:find("%l%l%l%l%l%.exe") == 1 then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
