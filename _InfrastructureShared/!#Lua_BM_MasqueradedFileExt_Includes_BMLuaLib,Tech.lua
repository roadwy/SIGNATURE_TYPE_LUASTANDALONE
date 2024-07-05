local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_FULL
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_PROCESS_PPID)
if L1_1 then
  MpCommon.BmTriggerSig(L1_1, "BM_MasqueradedFileExtension", L0_0)
end
taint(L0_0, "masqueraded_file_extension_taint", 3600)
return mp.INFECTED
