local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetNormalizedScript
L1_1 = true
L0_0 = L0_0(L1_1)
L1_1 = {}
for L5_5 in L2_2(L3_3, L4_4) do
  if L1_1[L5_5] == nil then
    table.insert(L1_1, L5_5)
  end
end
if L1_1 ~= nil then
elseif L2_2 == 0 then
  return L2_2
end
L2_2.SIG_CONTEXT = "TrojanDownloader:O97M/CVE-2017-0199.DA"
L2_2.CONTENT_SOURCE = "Office Embedded OLE with download link"
L2_2.PROCESS_CONTEXT = "Office"
L2_2.PARENT_CONTEXT = nil
L2_2.FILELESS = "false"
L2_2.CMDLINE_URL = "false"
L2_2.BREAK_AT_FIRST_HIT_MALWARE = "60"
L2_2.BREAK_AT_FIRST_HIT_PHISH = "60"
L5_5 = L2_2
if L3_3 then
  return L4_4
end
return L4_4
