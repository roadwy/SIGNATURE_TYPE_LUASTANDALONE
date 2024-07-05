local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:ContextFileInFirstFolder.B!appdata"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:ContextFileInFirstFolder.B!localappdata"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Lua:ContextFileInFirstFolder.B!locallowappdata"
    L0_0 = L0_0(L1_1)
  end
elseif L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILEPATH
  L4_4 = L1_1(L2_2)
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\temp\\"
    L4_4 = 1
    L1_1 = L1_1(L2_2, L3_3, L4_4, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = " "
      L4_4 = 1
      L1_1 = L1_1(L2_2, L3_3, L4_4, true)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_FILENAME
  L4_4 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 < 5 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "([^\\%.]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 <= 3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_SCANREASON
  L3_3 = L3_3(L4_4)
  L4_4 = mp
  L4_4 = L4_4.SCANREASON_ONOPEN
  if L3_3 ~= L4_4 then
    L4_4 = mp
    L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
  elseif L3_3 == L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L4_4 = L4_4(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
    if L4_4 == true then
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L4_4 = L4_4(mp.CONTEXT_DATA_PROCESS_PPID)
      if L4_4 ~= nil then
        MpCommon.RequestSmsOnProcess(L4_4, MpCommon.SMS_SCAN_MED)
      end
    end
  end
  L4_4 = mp
  L4_4 = L4_4.INFECTED
  return L4_4
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
