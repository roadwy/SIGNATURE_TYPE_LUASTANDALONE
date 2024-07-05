local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = "\\cmd.exe"
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = L8_8.image_path
  if L9_9 ~= nil then
    L9_9 = string
    L9_9 = L9_9.sub
    L9_9 = L9_9(L8_8.image_path, -#L1_1)
    if L9_9 == L1_1 then
      L9_9 = mp
      L9_9 = L9_9.bitand
      L9_9 = L9_9(L8_8.reason_ex, 1)
      if L9_9 == 1 then
        L0_0 = string.lower(mp.GetProcessCommandLine(L8_8.ppid))
        bm.add_threat_process(L8_8.ppid)
        break
      end
    end
  end
end
if L0_0 ~= nil then
  if L4_4 > L5_5 then
    for L8_8, L9_9 in L5_5(L6_6) do
      if string.sub(L9_9, -#L1_1) ~= L1_1 and sysio.IsFileExists(L9_9) then
        bm.add_threat_file(L9_9)
      end
    end
  end
end
return L4_4
