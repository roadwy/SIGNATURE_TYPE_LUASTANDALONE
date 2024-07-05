local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = isFirstTimeATActive
L0_0 = L0_0()
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = 1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L0_0 = 3
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
    if L1_1 then
      L0_0 = 98
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[7]
      L1_1 = L1_1.matched
      if L1_1 then
        L0_0 = 99
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[8]
        L1_1 = L1_1.matched
        if L1_1 then
          L0_0 = 109
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[9]
          L1_1 = L1_1.matched
          if L1_1 then
            L0_0 = 110
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[10]
            L1_1 = L1_1.matched
            if L1_1 then
              L0_0 = 111
            end
          end
        end
      end
    end
  end
end
L1_1 = tonumber
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p2
L1_1 = L1_1(L2_2)
L2_2 = math_floor
L3_3 = L0_0 / 100
L2_2 = L2_2(L3_3)
L2_2 = L2_2 + 1
L3_3 = updateFTATData
L4_4 = L2_2
L5_5 = L0_0
L6_6 = L1_1
L4_4 = L3_3(L4_4, L5_5, L6_6)
if L4_4 < 604800 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = bm
L5_5 = L5_5.add_related_string
L6_6 = "FirstTime"
L5_5(L6_6, L3_3, bm.RelatedStringBMReport)
L5_5 = bm
L5_5 = L5_5.set_detection_string
L6_6 = L3_3
L5_5(L6_6)
L5_5 = bm
L5_5 = L5_5.get_process_relationships
L6_6 = L5_5()
for _FORV_10_, _FORV_11_ in ipairs(L6_6) do
  if _FORV_11_.ppid ~= nil and _FORV_11_.image_path ~= nil and mp.bitand(_FORV_11_.reason_ex, 1) == 1 then
    bm.add_related_file(_FORV_11_.image_path)
  end
end
add_parents()
reportSessionInformation()
return mp.INFECTED
