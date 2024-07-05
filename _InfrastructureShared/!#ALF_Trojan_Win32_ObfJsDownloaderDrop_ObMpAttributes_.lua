local L0_0, L1_1, L2_2, L3_3
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
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L2_2 = mp
    L2_2 = L2_2.FILEPATH_QUERY_FULL
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
    L3_3 = L1_1(L2_2, L3_3)
    L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
    L1_1 = MpCommon
    L1_1 = L1_1.QueryPersistContext
    L2_2 = L0_0
    L3_3 = "isErik"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.INFECTED
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.bitor
    L3_3 = L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
    L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
    L2_2 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
    L3_3 = #L2_2
    if not (L3_3 < 4) then
      L3_3 = #L2_2
    elseif L3_3 > 8 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = "programdata\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$"
    if not string.find(L1_1, L3_3) then
      return mp.CLEAN
    end
    if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) and ({
      ["wscript.exe"] = true,
      ["cscript.exe"] = true
    })[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))] then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
