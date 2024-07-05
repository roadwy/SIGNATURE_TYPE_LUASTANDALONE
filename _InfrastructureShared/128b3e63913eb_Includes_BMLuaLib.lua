local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = MpCommon
L1_1 = L1_1.GetPersistContextNoPath
L2_2 = "lnkarg_sb"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L3_3 = L3_3.utf8p2
      L2_2 = L2_2(L3_3)
      L0_0 = L2_2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p2
      if L2_2 then
        L2_2 = string
        L2_2 = L2_2.lower
        L3_3 = this_sigattrlog
        L3_3 = L3_3[3]
        L3_3 = L3_3.utf8p2
        L2_2 = L2_2(L3_3)
        L0_0 = L2_2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p2
        if L2_2 then
          L2_2 = string
          L2_2 = L2_2.lower
          L3_3 = this_sigattrlog
          L3_3 = L3_3[4]
          L3_3 = L3_3.utf8p2
          L2_2 = L2_2(L3_3)
          L0_0 = L2_2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p2
          if L2_2 then
            L2_2 = string
            L2_2 = L2_2.lower
            L3_3 = this_sigattrlog
            L3_3 = L3_3[5]
            L3_3 = L3_3.utf8p2
            L2_2 = L2_2(L3_3)
            L0_0 = L2_2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p2
            if L2_2 then
              L2_2 = string
              L2_2 = L2_2.lower
              L3_3 = this_sigattrlog
              L3_3 = L3_3[6]
              L3_3 = L3_3.utf8p2
              L2_2 = L2_2(L3_3)
              L0_0 = L2_2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[7]
              L2_2 = L2_2.utf8p2
              if L2_2 then
                L2_2 = string
                L2_2 = L2_2.lower
                L3_3 = this_sigattrlog
                L3_3 = L3_3[7]
                L3_3 = L3_3.utf8p2
                L2_2 = L2_2(L3_3)
                L0_0 = L2_2
              end
            else
              L2_2 = mp
              L2_2 = L2_2.CLEAN
              return L2_2
            end
          end
        end
      end
    end
  end
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for L7_7, L8_8 in L4_4(L5_5) do
  if not contains(L8_8.image_path, "explorer.exe") then
    return mp.CLEAN
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  if contains(L0_0, L8_8) then
    return mp.INFECTED
  end
end
return L4_4
