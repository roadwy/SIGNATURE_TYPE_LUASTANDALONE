local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "PACKED_WITH:(Base64)"
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, L3_3)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.readprotection
    L2_2 = false
    L1_1(L2_2)
    L1_1 = mp
    L1_1 = L1_1.getfilesize
    L1_1 = L1_1()
    if L1_1 < 32767 then
      L2_2 = mp
      L2_2 = L2_2.readfile
      L2_2 = L2_2(L3_3, L4_4)
      L2_2 = L3_3
      for L6_6 in L3_3(L4_4, L5_5) do
        AppendToRollingQueue("PoshevinRelatedFiles", L6_6, nil, 5000)
      end
      L6_6 = "b64_script_refers_startup"
      L3_3(L4_4, L5_5, L6_6)
    end
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
