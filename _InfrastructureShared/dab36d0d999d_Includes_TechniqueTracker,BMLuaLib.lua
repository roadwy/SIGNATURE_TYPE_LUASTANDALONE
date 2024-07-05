local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 then
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
    L1_1 = L1_1:lower()
    if L1_1:find("\\ipy6?4?%.exe.-profile.?.?.py") then
      bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 6)
      TrackCommandLineAndTechnique(L1_1, "T1053.005:schtask_target")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
