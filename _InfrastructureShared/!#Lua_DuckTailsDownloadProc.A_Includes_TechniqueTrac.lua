local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if not L0_0 then
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
L3_3 = L3_3(L4_4, mp.FILEPATH_QUERY_PATH)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L4_4 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L1_1
L3_3 = L1_1.find
L3_3 = L3_3(L4_4, "\\users\\", 1, true)
if L3_3 then
  L3_3 = L1_1
  L4_4 = "\\"
  L3_3 = L3_3 .. L4_4 .. L2_2
  L4_4 = L1_1.match
  L4_4 = L4_4(L1_1, "\\users\\([^\\]+)\\")
  if ("kassir|quang luu|mr quang|quang luu pc|viet hoang|user|admin|lenovo|hp|asus"):find(L4_4, 1, true) then
    TT_SendBMSigTrigger(L0_0, "SuspAttackerServer", "scenario:ducktail_actor_infra;filepath:" .. L3_3)
  end
  if L1_1:find("\\users\\.+\\downloads", 1, true) then
    TrackPidAndTechnique(L0_0, "T1027.002", "scenario:ducktail;filepath:" .. L3_3)
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
