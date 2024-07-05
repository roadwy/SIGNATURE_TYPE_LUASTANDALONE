local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  L3_3 = L1_1.command_line
  if L3_3 ~= nil then
    L3_3 = string.lower(L3_3)
    if L3_3:find("postsharp.-srv%.exe") or L3_3:find("autoupdateclient.exe") or L3_3:find("sbc.-server.exe") then
      return mp.CLEAN
    end
    if L3_3:find("epsecurityservice.exe") then
      return mp.CLEAN
    end
    if L3_3:find("services.exe") or L3_3:find("svchost.exe") or L3_3:find("explorer.exe") then
      return mp.CLEAN
    end
    if IsDetectionThresholdMet(L2_2) then
      AddResearchData(L2_2, true)
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
