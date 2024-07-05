local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.getfilesize
    L0_0 = L0_0()
    if L0_0 ~= 16958 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
    L1_1 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L1_1, -4)
    if L2_2 ~= ".ico" then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_PROCESS_PPID)
    if L2_2 ~= nil then
      MpCommon.RequestSmsOnProcess(L2_2, MpCommon.SMS_SCAN_HIGH)
      mp.set_mpattribute(string.format("MpInternal_researchdata=FileName=%s,FileSize=%d,PPID=%s", L1_1, L0_0, L2_2))
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
