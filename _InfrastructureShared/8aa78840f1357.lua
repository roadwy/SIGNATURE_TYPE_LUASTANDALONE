local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
for L3_3 = 1, L1_1.NumberOfSections do
  L4_4 = pesecs
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.Name
  if L4_4 == "snapshot" then
    L4_4 = pesecs
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.PointerToRawData
    L5_5 = pesecs
    L5_5 = L5_5[L3_3]
    L5_5 = L5_5.SizeOfRawData
    if L4_4 ~= 0 and L5_5 ~= 0 then
      L6_6 = L4_4 + L5_5
      if L6_6 <= mp.getfilesize() then
        L6_6 = mp
        L6_6 = L6_6.readprotection
        L6_6(false)
        L6_6 = mp
        L6_6 = L6_6.readfile
        L6_6 = L6_6(L4_4, L5_5)
        mp.readprotection(true)
        mp.vfo_add_buffer(L6_6, "[DartAotSnapshot]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        return mp.INFECTED
      end
    end
  end
end
return L0_0
