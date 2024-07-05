local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2())
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= "\\sqlservr.exe" then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
elseif L2_2 == "\\sqlagent.exe" then
  L0_0 = true
end
if not L0_0 then
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L2_2()
  for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
    if _FORV_8_.image_path ~= nil and mp.bitand(_FORV_8_.reason_ex, 1) == 1 and (string.lower(string.sub(_FORV_8_.image_path, -13)) == "\\sqlservr.exe" or string.lower(string.sub(_FORV_8_.image_path, -13)) == "\\sqlagent.exe") then
      L0_0 = true
      break
    end
  end
end
if L0_0 ~= nil then
  L2_2 = nil
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L2_2 = L3_3.utf8p2
  end
  if L2_2 ~= nil then
    L3_3 = L2_2.match
    L3_3 = L3_3(L4_4, L5_5)
    L4_4(L5_5, "MalwareDroppedBySQL")
    return L4_4
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
