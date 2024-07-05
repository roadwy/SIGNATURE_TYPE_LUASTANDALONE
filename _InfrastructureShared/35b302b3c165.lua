local L0_0, L1_1
L0_0 = {}
L0_0["omadmclient.exe"] = true
L0_0["provtool.exe"] = true
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(string.match(bm.get_imagepath(), "\\([^\\]+)$"))
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if L0_0[L1_1] == true then
  return mp.CLEAN
end
return mp.INFECTED
