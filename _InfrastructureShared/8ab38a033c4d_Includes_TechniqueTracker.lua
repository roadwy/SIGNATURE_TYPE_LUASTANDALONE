local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.ppid
  end
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  L3_3 = L2_2.find
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = L2_2.find
    L3_3 = L3_3(L4_4, L5_5)
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = L2_2.find
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = L2_2.find
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.image_path
  if L9_9 ~= nil then
    L9_9 = string.lower(L9_9)
    if L9_9:find("windows\\ccm\\", 1, true) then
      return mp.CLEAN
    end
    if L9_9:find("tripwire.*\\twexec%.exe") then
      return mp.CLEAN
    end
    if L9_9:find("ruby%.exe", 1, true) then
      return mp.CLEAN
    end
    if L9_9:find("verodin_backend%.exe", 1, true) then
      return mp.CLEAN
    end
  end
end
if L4_4 then
  L7_7 = "credentialdumping"
  L4_4(L5_5, L6_6, L7_7)
  return L4_4
end
return L4_4
