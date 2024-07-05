local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "OfficeOleObjectRepChecked"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Detection:Exploit:O97M/CVE-2017-0199.D"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "//AGGR:OfficeFileOLE_1"
    L0_0 = L0_0(L1_1)
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "//SCPT:OleExternalRelationship.OleEmbed"
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetNormalizedScript
L2_2 = L0_0.is_header
L1_1 = L1_1(L2_2)
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
for L6_6 in L3_3(L4_4, L5_5) do
  if L2_2[L6_6] == nil then
    table.insert(L2_2, L6_6)
  end
end
if L2_2 ~= nil then
elseif L3_3 == 0 then
  return L3_3
end
L3_3.SIG_CONTEXT = "Office External OleObject"
L3_3.CONTENT_SOURCE = "Office External OleObject"
L3_3.PROCESS_CONTEXT = "MS Office"
L3_3.PARENT_CONTEXT = nil
L3_3.FILELESS = "false"
L3_3.CMDLINE_URL = "false"
L3_3.BREAK_AT_FIRST_HIT_MALWARE = "60"
L3_3.BREAK_AT_FIRST_HIT_PHISH = "60"
if L4_4 then
  L3_3.TAG = "Email"
end
L6_6 = L3_3
if L4_4 then
  return L5_5
end
return L5_5
