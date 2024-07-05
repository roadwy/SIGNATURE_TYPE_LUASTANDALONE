local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
elseif not L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L1_1 = L1_1(L2_2)
for L5_5, L6_6 in L2_2(L3_3) do
  if string.lower(L6_6) ~= string.lower(L0_0.image_path) and sysio.IsFileExists(L6_6) and #L6_6 >= 18 and (string.sub(L6_6, -18) == ".devicemanifest-ms" or string.sub(L6_6, -18) == ".devicemetadata-ms") then
    bm.add_threat_file(L6_6)
  end
end
return L2_2
