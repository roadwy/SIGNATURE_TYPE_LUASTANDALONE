local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = machoLC
L1_1 = L1_1.__TEXT
L1_1 = L1_1.__cstring
L1_1 = L1_1.Size
if L1_1 > 16 then
  L1_1 = machoLC
  L1_1 = L1_1.__TEXT
  L1_1 = L1_1.__cstring
  L1_1 = L1_1.Offset
  if L1_1 > 0 then
    L1_1 = machoLC
    L1_1 = L1_1.__TEXT
    L1_1 = L1_1.__cstring
    L1_1 = L1_1.Offset
    L2_2 = machoLC
    L2_2 = L2_2.__TEXT
    L2_2 = L2_2.__cstring
    L2_2 = L2_2.Size
    L1_1 = L1_1 + L2_2
    if L0_0 > L1_1 then
      L1_1 = mp
      L1_1 = L1_1.readprotection
      L2_2 = false
      L1_1(L2_2)
      L1_1 = mp
      L1_1 = L1_1.readfile
      L2_2 = machoLC
      L2_2 = L2_2.__TEXT
      L2_2 = L2_2.__cstring
      L2_2 = L2_2.Offset
      L3_3 = machoLC
      L3_3 = L3_3.__TEXT
      L3_3 = L3_3.__cstring
      L3_3 = L3_3.Size
      L1_1 = L1_1(L2_2, L3_3)
      L2_2 = mp
      L2_2 = L2_2.readprotection
      L3_3 = true
      L2_2(L3_3)
      L2_2 = #L1_1
      if L2_2 < 16 then
        L2_2 = #L1_1
        if L2_2 > 16777216 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L4_4 = "b64decode("
      L2_2 = L2_2(L3_3, L4_4, 1, true)
      if L2_2 ~= nil then
        L2_2 = L2_2 + 11
        L3_3 = string
        L3_3 = L3_3.sub
        L4_4 = L1_1
        L3_3 = L3_3(L4_4, L2_2)
        L4_4 = MpCommon
        L4_4 = L4_4.Base64Decode
        L4_4 = L4_4(L3_3)
        if L4_4 ~= nil and L4_4 ~= "" then
          mp.set_mpattribute("//MpBase64DecodeLongLines")
          mp.vfo_add_buffer(L4_4, "[PyMacB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
