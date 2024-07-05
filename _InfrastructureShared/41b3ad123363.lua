function add_related_file_wrapper(A0_0)
  local L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
  if A0_0 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    for L5_5, L6_6 in L2_2(L3_3) do
      L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
      if string.find(L6_6, "cmstp.exe$") == nil and sysio.IsFileExists(L6_6) then
        bm.add_related_file(L6_6)
      end
    end
  end
end
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  add_related_file_wrapper(this_sigattrlog[1].utf8p2)
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  add_related_file_wrapper(this_sigattrlog[3].utf8p1)
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  add_related_file_wrapper(this_sigattrlog[3].utf8p2)
end
return mp.INFECTED
