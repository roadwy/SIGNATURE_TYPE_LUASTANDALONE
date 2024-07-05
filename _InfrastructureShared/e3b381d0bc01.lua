local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[7]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[7]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L0_0 = L1_1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[8]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = string
          L1_1 = L1_1.lower
          L2_2 = this_sigattrlog
          L2_2 = L2_2[8]
          L2_2 = L2_2.utf8p1
          L1_1 = L1_1(L2_2)
          L0_0 = L1_1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[9]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = string
            L1_1 = L1_1.lower
            L2_2 = this_sigattrlog
            L2_2 = L2_2[9]
            L2_2 = L2_2.utf8p1
            L1_1 = L1_1(L2_2)
            L0_0 = L1_1
          end
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L2_2 = L0_0
  L1_1 = L0_0.find
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L2_2 = L0_0
      L1_1 = L0_0.find
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L2_2 = L0_0
        L1_1 = L0_0.find
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.lower
    L8_8 = L8_8(L7_7.image_path)
    if string.find(L8_8, "\\wmiprvse.exe", 1, true) or string.find(L8_8, "\\winrshost.exe", 1, true) then
      return mp.INFECTED
    end
  end
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
