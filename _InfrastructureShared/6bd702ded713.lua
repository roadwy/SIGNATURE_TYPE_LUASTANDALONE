local L0_0, L1_1
L0_0 = {}
L0_0["winword.exe"] = true
L0_0["excel.exe"] = true
L0_0["powerpnt.exe"] = true
L0_0["outlook.exe"] = true
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 ~= nil then
  for _FORV_5_ = 1, 4 do
    if L0_0[string.lower(L1_1.image_path):match("([^\\]+)$")] then
      return mp.INFECTED
    else
      L1_1 = mp.GetParentProcInfo(L1_1.ppid)
      _FORV_5_ = _FORV_5_ + 1
    end
  end
end
return _FOR_.CLEAN
