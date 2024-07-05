local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = 3
L1_1 = bm
L1_1 = L1_1.GetSignatureMatchDuration
L1_1 = L1_1()
L2_2 = L0_0 * 10000000
if L1_1 > L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2())
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 < 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L5_5, true)
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
  if _FORV_8_.image_path ~= nil and mp.bitand(_FORV_8_.reason_ex, 1) == 1 and string.find(string.lower(_FORV_8_.image_path), "\\powershell.exe", 1, true) then
    return mp.INFECTED
  end
end
return L4_4
