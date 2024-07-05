local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:RotObfusChecked"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
else
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "SCPT:RotObfusChecked"
  L0_0(L1_1)
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = nil
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = tostring
  L3_3 = headerpage
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
else
  L2_2 = tostring
  L3_3 = footerpage
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = {}
L3_3["wscript.shell"] = true
L3_3["adodb.stream"] = true
L3_3["scripting.filesystemobject"] = true
for L7_7, L8_8 in L4_4(L5_5, L6_6) do
  L9_9 = tonumber
  L10_10 = L8_8
  L9_9 = L9_9(L10_10)
  L10_10 = nil
  if L9_9 then
    L10_10 = rot_decrypt(L7_7, L9_9)
  else
    L10_10 = rot_decrypt(L7_7, 13)
  end
  if L10_10 and L3_3[L10_10:lower()] then
    mp.set_mpattribute("SCPT:RotObfusInfected")
    return mp.INFECTED
  end
end
return L4_4
