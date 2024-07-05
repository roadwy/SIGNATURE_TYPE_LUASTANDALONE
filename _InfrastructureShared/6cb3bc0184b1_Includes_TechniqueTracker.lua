local L0_0, L1_1
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L1_1 = L1_1()
if L1_1 ~= nil then
  for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
    if _FORV_7_.image_path ~= nil then
      L0_0 = string.lower(MpCommon.PathToWin32Path(_FORV_7_.image_path))
      if string.find(L0_0, "\\taniumclient.exe", -17, true) or string.find(L0_0, "\\wbem\\wmiprvse.exe", -18, true) or string.find(L0_0, "\\microsoft intune management extension\\agentexecutor.exe", -56, true) or string.find(L0_0, "\\netlogon\\mdatp\\windowsdefenderatponboardingscript.cmd", -54, true) or string.find(L0_0, "\\qualysagent\\qualysagent.exe", -28, true) or string.find(L0_0, "\\quest\\kace\\kdeploy.exe", -23, true) or string.find(L0_0, "\\windows defender advanced threat protection\\senseir.exe", -56, true) or string.find(L0_0, "\\sng\\abtsngsvc.exe", -18, true) then
        return mp.CLEAN
      end
    end
    if sysio.IsFileExists(L0_0) and not mp.IsKnownFriendlyFile(L0_0, true, false) then
      bm.add_related_file(L0_0)
    end
  end
end
return mp.INFECTED
