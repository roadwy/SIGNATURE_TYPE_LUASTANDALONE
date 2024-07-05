local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L2_2())
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
L2_2 = L0_0
L1_1 = L0_0.match
L1_1 = L1_1(L2_2, "(%w+%.exe)$")
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(MpCommon.ExpandEnvironmentVariables("%WINDIR%"))
if (L0_0:find(L2_2 .. "\\system32", 1, true) or L0_0:find(L2_2 .. "\\syswow64", 1, true)) and L1_1 == "rundll32.exe" then
  if this_sigattrlog[4].matched then
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 2471941984)
  else
    mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 1925377452)
  end
  return mp.INFECTED
end
return mp.CLEAN
