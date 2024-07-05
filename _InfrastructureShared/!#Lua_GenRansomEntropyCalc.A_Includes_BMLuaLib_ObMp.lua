local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:EntropyCalculated"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L6_6 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3, L4_4))
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 == nil or L3_3 > 16777216 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L1_1
L5_5 = "\\"
L6_6 = L2_2
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L6_6 = GetFileEntropy
L6_6 = L6_6(L5_5, L3_3)
if L6_6 ~= nil then
  mp.set_mpattribute("Lua:EntropyCalculated")
  if L6_6 > 6 then
    if mp.get_mpattribute("BM_UNKNOWN_FILE") then
      MpCommon.BmTriggerSig(L0_0, "FileEntropy", string.format("filepath:%s;entropy:%s;filetype:unknown", L5_5, tostring(L6_6)))
    else
      MpCommon.BmTriggerSig(L0_0, "FileEntropy", string.format("filepath:%s;entropy:%s", L5_5, tostring(L6_6)))
    end
  end
  return mp.INFECTED
end
return mp.CLEAN
