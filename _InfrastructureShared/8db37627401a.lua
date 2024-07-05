local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L0_0(L1_1)
if L0_0 then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = mp
      L8_8 = L8_8.bitand
      L8_8 = L8_8(L7_7.reason_ex, 1)
      if L8_8 == 1 then
        L8_8 = L7_7.ppid
        if L8_8 ~= nil then
          L8_8 = bm
          L8_8 = L8_8.trigger_sig
          L8_8("DumpADConnectCreds", "THREAT", L7_7.ppid)
          L8_8 = string
          L8_8 = L8_8.lower
          L8_8 = L8_8(L7_7.image_path)
          if string.find(L8_8, "powershell.exe", 1, true) or string.find(L8_8, "cmd.exe", 1, true) then
            bm.add_threat_process(L7_7.ppid)
          end
        end
      end
    end
  end
end
return L3_3
