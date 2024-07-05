local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, L4_4)
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L4_4)
  if not L2_2 then
    L2_2 = L1_1.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = L7_7.image_path
  if L8_8 ~= nil then
    L8_8 = string.lower(L8_8)
    if L8_8:find("windows\\ccm\\", 1, true) then
      return mp.CLEAN
    end
    if L8_8:find("tripwire.*\\twexec%.exe") then
      return mp.CLEAN
    end
    if L8_8:find("ruby%.exe", 1, true) then
      return mp.CLEAN
    end
    if L8_8:find("verodin_backend%.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
L6_6 = "creddiscovery"
L3_3(L4_4, L5_5, L6_6)
return L3_3
