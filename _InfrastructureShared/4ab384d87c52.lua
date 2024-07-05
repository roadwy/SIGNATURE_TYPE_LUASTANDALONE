local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L3_3 = "\\([^\\]+)\\[^\\]+$"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == "adfs" then
    L2_2 = string
    L2_2 = L2_2.match
    L3_3 = L0_0
    L2_2 = L2_2(L3_3, "\\([^\\]+)$")
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(MpCommon.ExpandEnvironmentVariables("%WINDIR%\\SYSTEM32\\"))
    if sysio.IsFileExists(L3_3 .. L2_2) then
      bm.add_related_file(L0_0)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
