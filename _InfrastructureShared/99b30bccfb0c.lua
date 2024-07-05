local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
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
    L0_0 = L2_2.ppid
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L0_0 = L2_2.ppid
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L1_1 = L2_2.utf8p2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L0_0 = L2_2.ppid
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L1_1 = L2_2.utf8p2
      end
    end
  end
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 == false then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.ppid
if L0_0 ~= L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L0_0
L4_4 = L3_3(L4_4)
L5_5 = nil
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = mp
  L11_11 = L11_11.bitand
  L11_11 = L11_11(L12_12, L13_13)
  if L11_11 == 1 then
    if L12_12 > 8 then
      if L12_12 == "\\cmd.exe" then
        L5_5 = L10_10.ppid
        break
      end
    end
  end
end
if L5_5 == nil then
  return L6_6
end
if L7_7 ~= nil then
elseif L8_8 < 2 then
  return L8_8
end
if L8_8 == false then
  return L8_8
end
L9_9 = this_sigattrlog
L9_9 = L9_9[6]
L9_9 = L9_9.matched
if L9_9 == false then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = this_sigattrlog
L9_9 = L9_9[6]
L9_9 = L9_9.ppid
L10_10 = false
L11_11 = false
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = mp
  L17_17 = L17_17.bitand
  L17_17 = L17_17(L16_16.reason_ex, 1)
  if L17_17 == 1 and string.len(L16_16.image_path) > 8 and string.sub(L16_16.image_path, -8) == "\\cmd.exe" then
    if L16_16.ppid == L8_8 then
      L10_10 = true
    elseif L16_16.ppid == L9_9 then
      L11_11 = true
    end
  end
end
if L10_10 == false or L11_11 == false then
  return L12_12
end
for L16_16, L17_17 in L13_13(L14_14) do
  if L17_17 ~= nil and 4 <= string.len(L17_17) and string.lower(string.sub(L17_17, -4)) ~= ".exe" and sysio.IsFileExists(L17_17) then
    bm.add_related_file(L17_17)
  end
end
return L13_13
