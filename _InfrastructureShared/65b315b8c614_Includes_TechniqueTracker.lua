local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
if L0_0 == nil then
  return L2_2
end
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = "svchost.exe|taskeng.exe|taskhostw.exe"
    L8_8 = string
    L8_8 = L8_8.lower
    L8_8 = L8_8(string.match(L6_6.image_path, "\\([^\\]+)$"))
    if L8_8 ~= nil and string.find(L7_7, L8_8) then
      TrackPidAndTechniqueBM("BM", "T1053.005", "schtask-target")
      return mp.INFECTED
    end
  end
end
return L2_2
