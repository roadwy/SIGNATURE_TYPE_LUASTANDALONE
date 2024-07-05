local L0_0, L1_1, L2_2, L3_3
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.command_line
  if L3_3 ~= nil then
    L3_3 = L2_2.ppid
    if L3_3 ~= nil then
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(L2_2.command_line)
      L1_1 = L3_3
      L0_0 = L2_2.ppid
    end
  end
end
L3_3 = bm
L3_3 = L3_3.get_imagepath
L3_3 = L3_3()
if L3_3 ~= nil then
  L3_3 = MpCommon.PathToWin32Path(L3_3)
end
if L3_3 == nil or L0_0 == nil then
  return mp.CLEAN
end
L3_3 = string.lower(L3_3)
if StringStartsWith(L3_3, "%") then
  return mp.CLEAN
end
if L3_3:find("\\adminarsenal\\", 1, true) or L3_3:find("ccmexec%.exe") or L3_3:find("bomgar%-scc%.exe") or L3_3:find("keyacc32%.exe") then
  return mp.CLEAN
end
if L3_3:find("\\temp\\kav remote installations\\", 1, true) or L3_3:find("\\logmein rescue connectonlan\\lmirescueapplet", 1, true) then
  return mp.CLEAN
end
if L3_3:find("\\veeam.+%.exe") or L3_3:find("\\f5.+%.exe") then
  return mp.CLEAN
end
if L3_3:find("\\pdq.+%.exe") then
  return mp.CLEAN
end
if L1_1:find("advanced threat protection\\datacollection\\", 1, true) then
  return mp.CLEAN
end
if GetTaintLevelHR() == "High" and (mp.IsHipsRuleEnabled("01443614-cd74-433a-b99e-2ecdc07bfc25") or mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35")) then
  TrackPidAndTechniqueBM(L0_0, "T1021.002", "tt_remediate_cantidate")
  return mp.INFECTED
end
return mp.CLEAN
