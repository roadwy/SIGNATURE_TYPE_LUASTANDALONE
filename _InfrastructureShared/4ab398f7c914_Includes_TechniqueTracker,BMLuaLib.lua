local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[1]
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
        bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
        TrackCommandLineAndTechnique(L1_1, "T1053.005:schtask_target")
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
