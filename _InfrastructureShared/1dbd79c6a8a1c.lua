local L0_0, L1_1, L2_2
L0_0 = {}
L0_0["winword.exe"] = true
L0_0["excel.exe"] = true
L0_0["powerpnt.exe"] = true
L0_0["outlook.exe"] = true
L0_0["iexplore.exe"] = true
L0_0["microsoftedge.exe"] = true
L0_0["chrome.exe"] = true
L0_0["firefox.exe"] = true
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L1_1.image_path)
  if string.match(L2_2, "\\([^\\]+)$") == "" or string.match(L2_2, "\\([^\\]+)$") == nil then
    return mp.CLEAN
  end
  if L0_0[string.match(L2_2, "\\([^\\]+)$")] == true then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
