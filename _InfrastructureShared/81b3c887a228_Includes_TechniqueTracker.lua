local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string.lower(L7_7)
    if L7_7:find("windows\\ccm\\", 1, true) then
      return mp.CLEAN
    end
    if L7_7:find("tripwire.*\\twexec%.exe") then
      return mp.CLEAN
    end
    if L7_7:find("ruby%.exe", 1, true) then
      return mp.CLEAN
    end
    if L7_7:find("verodin_backend%.exe", 1, true) then
      return mp.CLEAN
    end
  end
  if L6_6.ppid then
    TrackPidAndTechniqueBM(L6_6.ppid, "T1003.005", "credentialdumping")
  end
end
return L2_2
