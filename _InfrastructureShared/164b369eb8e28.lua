local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.sub
  L2_2 = L0_0
  L3_3 = -4
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = "|.asp|aspx|ashx|asmx|"
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = L1_1
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = bm
    L4_4 = L4_4.get_imagepath
    L5_5 = L4_4()
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4())
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L3_3
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 == nil then
      L4_4 = string
      L4_4 = L4_4.match
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, L6_6)
    elseif L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = bm
    L4_4 = L4_4.get_process_relationships
    L5_5 = L4_4()
    for _FORV_9_, _FORV_10_ in L6_6(L7_7) do
      if _FORV_10_.image_path ~= nil and (string.match(string.lower(_FORV_10_.image_path), "\\microsoft\\exchange server\\v%d%d\\") ~= nil or string.match(string.lower(_FORV_10_.image_path), "\\microsoft shared\\web server extensions\\%d%d\\") ~= nil) then
        return mp.CLEAN
      end
    end
    if L6_6 then
      L6_6(L7_7)
    end
    return L6_6
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
