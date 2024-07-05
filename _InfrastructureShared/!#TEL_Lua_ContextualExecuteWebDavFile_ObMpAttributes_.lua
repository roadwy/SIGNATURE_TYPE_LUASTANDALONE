local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.bitor
  L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
  L1_1 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)), 0, -5)
  if ({
    cmd = "",
    cscript = "",
    wscript = "",
    mshta = "",
    rundll32 = "",
    regasm = "",
    regsvc = "",
    regsvr32 = "",
    odbcconf = "",
    msbuild = "",
    certutil = "",
    installutil = ""
  })[string.lower(L2_2)] then
    if MpCommon.QueryPersistContext(L1_1, "DroppedFromWebDav") then
      mp.set_mpattribute("Lua:ContextualExecuteWebDavFile:" .. L2_2)
    else
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
