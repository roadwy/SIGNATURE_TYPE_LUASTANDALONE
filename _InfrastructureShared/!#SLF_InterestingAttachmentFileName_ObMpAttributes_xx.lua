local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L9_9 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L1_1(L2_2, L3_3))
L0_0 = L0_0 or ""
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "(.+)%.([^.]+)$"
L2_2 = L1_1(L2_2, L3_3)
if nil ~= L2_2 and nil ~= L1_1 then
  L3_3 = {}
  L3_3.doc = true
  L3_3.docm = true
  L3_3.xls = true
  L3_3.xlsm = true
  L3_3.pdf = true
  L4_4 = L3_3[L2_2]
  if true == L4_4 then
    L4_4 = {
      L5_5,
      L6_6,
      L7_7,
      L8_8,
      L9_9,
      "min",
      "nuevo",
      "pic",
      "jpg",
      "inc",
      "crack",
      "files",
      "backup",
      "plugin",
      "setup",
      "pdf",
      "acc",
      "cracked",
      "dhl",
      "instr"
    }
    L8_8 = "invoice"
    L9_9 = "steam"
    for L8_8, L9_9 in L5_5(L6_6) do
      if L1_1:sub(L9_9, 1, "true") then
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
