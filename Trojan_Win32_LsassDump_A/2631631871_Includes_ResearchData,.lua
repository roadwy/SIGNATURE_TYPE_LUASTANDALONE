local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSDEVICEPATH
L9_9 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILEPATH
L9_9 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L3_3(L4_4))
L3_3 = {}
L3_3["\\programdata\\microsoft\\diagnosis\\temp\\diagtrack_{.*\\processdumpaction902\\processdump_.*.dmp"] = ""
L3_3["\\users\\.*\\appdata\\local\\temp\\vmware.loucs\\vmwarednd\\.*\\lsass.exe_.*.dmp"] = ""
L3_3["\\staging.ssm\\files\\windows\\temp\\haxm\\xm_7fbc1d8.tmp"] = ""
L3_3["\\users\\.*\\appdata\\local\\temp\\cabviewer\\.*\\.*-processdump_.*.dmp"] = ""
L3_3["\\users\\.*\\appdata\\local\\temp\\lsass.exe.*.dmp"] = ""
L3_3["\\wer\\reportqueue\\aw.*\\agent.pluginhost.exe.*mini.dmp"] = ""
L3_3["lsass.exe.secure.wxhu.dmp.decrypt.dmp"] = ""
L3_3[":\\data\\dumps\\debuguser.*\\dumpuid.*_processdump_.*.dmp"] = ""
L3_3[":\\data\\dumps\\debuguser.*\\dumpuid.*.hdmp"] = ""
L3_3[":\\data\\dumps\\debuguser.*\\dumpuid.*lsass.exe.*.secure.wxhu.dmp.decrypt.dmp"] = ""
L3_3["lsass.exe.secure.wxtu.dmp.decrypt.dmp"] = ""
L3_3[":\\windows\\temp\\.*_processdump_.*.dmp"] = ""
L3_3[":\\windows\\temp\\.*_memory.hdmp"] = ""
L4_4 = {}
L4_4["\\programdata\\microsoft\\azurewatson\\.\\awdumpifeo.exe"] = ""
L4_4["\\windows\\system32\\werfault.exe"] = ""
L4_4["\\programdata\\microsoft\\azurewatson\\.\\procdump\\x..\\procdump.*.exe"] = ""
L4_4["\\windows\\system32\\svchost.exe"] = ""
L4_4["doubletake.exe"] = ""
L4_4["vmware.vmx.exe"] = ""
L4_4["cabviewer.exe"] = ""
L4_4[":\\data\\debuggers\\debuggers\\debuggers\\CDB.*amd64skdump.exe"] = ""
L4_4["werdbg.exe"] = ""
L4_4[":\\data\\debuggers\\debuggers\\debuggers\\cdb.*amd64skdump.exe"] = ""
L5_5 = 0
for L9_9, _FORV_10_ in L6_6(L7_7) do
  if L2_2:match(L9_9) ~= nil then
    L5_5 = 1
    break
  end
end
if L5_5 == 1 then
  for L9_9, _FORV_10_ in L6_6(L7_7) do
    if L1_1:match(L9_9) ~= nil then
      return mp.CLEAN
    end
  end
end
if L6_6 ~= nil then
  return L6_6
end
if L6_6 < 30720000 then
  return L7_7
end
L9_9 = "lsass.pdb"
mp.readprotection(false)
mp.readprotection(true)
if tostring(mp.readfile(0, 200000)):find(L7_7, 1, true) == nil or tostring(mp.readfile(0, 200000)):find(L8_8, 1, true) == nil or tostring(mp.readfile(0, 200000)):find(L9_9, 1, true) == nil then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping_concrete", 86400)
end
if mp.get_contextdata(mp.CONTEXT_DATA_PROCESS_ID) == 4 and mp.get_contextdata(mp.CONTEXT_DATA_REMOTE_SESSION_IP) and mp.get_contextdata(mp.CONTEXT_DATA_REMOTE_SESSION_IP) ~= "" then
  mp.changedetectionname(1256183792)
  return mp.INFECTED
end
return mp.INFECTED
