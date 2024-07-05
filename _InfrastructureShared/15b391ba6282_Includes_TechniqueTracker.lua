local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["explorer.exe"] = true
L1_1["outlook.exe"] = true
L1_1["winword.exe"] = true
L1_1["excel.exe"] = true
L1_1["msedge.exe"] = true
L1_1["chrome.exe"] = true
L1_1["firefox.exe"] = true
L1_1["winrar.exe"] = true
L1_1["winzip.exe"] = true
L1_1["7zfm.exe"] = true
L1_1["olk.exe"] = true
if checkParentProcessNameFromListByPPID(L0_0.ppid, L1_1) ~= true then
  return mp.CLEAN
end
AddResearchData(L0_0.ppid, true)
return mp.INFECTED
