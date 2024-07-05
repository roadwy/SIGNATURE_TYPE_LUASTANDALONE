local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L0_0 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.ppid
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = StringStartsWith
L3_3 = L0_0
L4_4 = "%"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L0_0
L2_2 = L0_0.find
L4_4 = "microsoft\\onedrive\\"
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L3_3 = L0_0
  L2_2 = L0_0.find
  L4_4 = "windows\\ccm"
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.QueryPersistContext
L3_3 = L0_0
L4_4 = "SuspPathsFromSchTask"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L4_4 = L3_3()
  if L3_3 == nil then
    return L5_5
  end
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = "svchost.exe|taskeng.exe|taskhostw.exe"
      L11_11 = string
      L11_11 = L11_11.lower
      L11_11 = L11_11(string.match(L9_9.image_path, "\\([^\\]+)$"))
      if L11_11 ~= nil and string.find(L10_10, L11_11) then
        TrackPidAndTechniqueBM(L1_1, "T1053.005", "schtask_target")
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
