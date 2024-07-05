local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.utf8p2
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.lower
  L8_8 = L8_8(L7_7.image_path)
  if L8_8 ~= nil and (string.find(L8_8, "\\svchost.exe", 1, true) or string.find(L8_8, "\\msiexec.exe", 1, true) or string.find(L8_8, "\\runtimebroker.exe", 1, true) or string.find(L8_8, "\\maatunnel.exe", 1, true) or string.find(L8_8, "\\cftpstes.exe", 1, true) or string.find(L8_8, "\\explorer.exe", 1, true) or string.find(L8_8, "\\dllhost.exe", 1, true) or string.find(L8_8, "\\msaccess.exe", 1, true) or string.find(L8_8, "\\dwdesk.exe", 1, true) or string.find(L8_8, "\\dsaccessservice.exe", 1, true)) then
    return mp.CLEAN
  end
end
if L0_0 ~= nil then
  if L3_3 > 3 then
    if L3_3 ~= nil then
      for L7_7, L8_8 in L4_4(L5_5) do
        if string.find(L8_8, "\\maslog_runxx.dl") then
          return mp.CLEAN
        end
        L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
        bm.add_related_file(L8_8)
      end
    end
  end
end
return L3_3
