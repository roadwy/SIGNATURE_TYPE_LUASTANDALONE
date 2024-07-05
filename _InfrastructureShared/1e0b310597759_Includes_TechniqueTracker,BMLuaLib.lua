local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[7]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[7]
      L0_0 = L0_0.utf8p1
      L1_1 = string
      L1_1 = L1_1.match
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "<Command>(.*)</Command>")
      L2_2 = string
      L2_2 = L2_2.match
      L2_2 = L2_2(L0_0, "<Arguments>(.*)</Arguments>")
      if L1_1 ~= nil then
        if L2_2 ~= nil then
          L1_1 = L1_1 .. " " .. L2_2
        end
        if L1_1:find("windowsdefenderatponboardingscript.cmd", 1, true) then
          return mp.CLEAN
        end
        if L1_1:find("\\sysvol\\", 1, true) then
          return mp.CLEAN
        end
        if L1_1:find("\\netlogon\\", 1, true) then
          return mp.CLEAN
        end
        if L1_1:find("windows\\ccm", 1, true) then
          return mp.CLEAN
        end
        if L1_1:find("config.xml", 1, true) then
          return mp.CLEAN
        end
        TrackCommandLineAndTechnique(L1_1, "T1053.005:schtask_target")
        if mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") or IsDetectionThresholdMet("BM") then
          bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
          AddResearchData(this_sigattrlog[7].ppid, true)
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
