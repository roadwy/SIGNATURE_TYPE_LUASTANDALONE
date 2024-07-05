local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 ~= false then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.utf8p1
elseif L0_0 == nil then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p1
L1_1 = "\\wmiprvse.exe"
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = false
L4_4 = bm
L4_4 = L4_4.get_process_relationships
L5_5 = L4_4()
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = L10_10.image_path
  if L11_11 ~= nil then
    L11_11 = string
    L11_11 = L11_11.lower
    L11_11 = L11_11(L10_10.image_path)
    if mp.bitand(L10_10.reason_ex, 1) == 1 and L2_2 < string.len(L11_11) and string.sub(L11_11, -L2_2) == L1_1 then
      L3_3 = true
      break
    end
  end
end
if L3_3 == false then
  return L6_6
end
L6_6(L7_7, L8_8)
return L6_6
