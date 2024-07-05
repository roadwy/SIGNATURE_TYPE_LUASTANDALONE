local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
    L4_4 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
    L2_2 = "amazon-ssm-agent.exe|waworkerhost.exe|gcemetadatascripts.exe|ruby.exe|ssm-document-worker.exe|glyph.publisher.exe|ssm-agent-worker.exe|screenconnect.clientservice.exe|cfn-init.exe|winhup.exe|cloudtestagent.exe|microsoft.management.services.intunewindowsagent.exe|azcopy.exe|agentexecutor.exe|gitlab-runner.exe|scriptrunner.exe|cagservice.exe|ltsvc.exe|jumpcloud-agent-updater.exe|"
    L4_4 = L2_2
    L3_3 = L2_2.find
    L3_3 = L3_3(L4_4, L1_1, 1, true)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = "cyserver.exe|aemagent.exe|pangphip.exe|repmgr.exe|taniumcx.exe"
    L4_4 = L3_3.find
    L4_4 = L4_4(L3_3, L1_1, 1, true)
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = mp
    L4_4 = L4_4.getfilename
    L4_4 = L4_4(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if ("appveyor.yml|cscompmeta|resume_db.json|metadata_db.json|userscript.bat|userscript.ps1|"):find(L4_4, 1, true) then
      return mp.CLEAN
    end
    TrackPidAndTechnique("AMSI", "T1105", "ingress_tool")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
