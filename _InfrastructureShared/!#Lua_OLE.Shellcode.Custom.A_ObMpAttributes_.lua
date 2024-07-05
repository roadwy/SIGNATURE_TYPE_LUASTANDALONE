local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 7000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L0_0
L8_8 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "[Ee]\000[Qq]\000[Uu]\000[Aa]\000[Tt]\000[Ii]\000[Oo]\000[Nn]\000\020\000[Nn]\000[Aa]\000[Tt]\000[Ii]\000[Vv]\000[Ee]"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "LUA:OLE.EquationNative"
  L2_2(L3_3)
  L2_2 = {}
  L2_2[184] = 5
  L2_2[187] = 5
  L2_2[185] = 5
  L2_2[186] = 5
  L2_2[190] = 5
  L2_2[191] = 5
  L2_2[188] = 5
  L2_2[189] = 5
  L3_3 = {}
  L3_3[129] = 6
  L3_3[247] = 2
  L3_3[46] = 5
  L3_3[45] = 5
  L3_3[53] = 5
  L3_3[5] = 5
  L3_3[37] = 5
  L4_4 = {}
  L4_4[139] = 2
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L1_1
  L7_7 = "\208\207\017\224\161\177\026\225"
  L8_8 = 1
  L6_6 = L5_5(L6_6, L7_7, L8_8, true)
  if L5_5 == nil or L6_6 == nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = L5_5
  L8_8 = L7_7 + 512
  L5_5 = L8_8 + 38
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5)
  L8_8 = L2_2[L8_8]
  if L8_8 == nil then
    L8_8 = L7_7 + 512
    L5_5 = L8_8 + 38
    L8_8 = L1_1.byte
    L8_8 = L8_8(L1_1, L5_5)
    L8_8 = L2_2[L8_8]
    if L8_8 == nil then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
  end
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5)
  L8_8 = L2_2[L8_8]
  L5_5 = L5_5 + L8_8
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5)
  L8_8 = L3_3[L8_8]
  if L8_8 == nil then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5)
  L8_8 = L3_3[L8_8]
  L5_5 = L5_5 + L8_8
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5)
  L8_8 = L4_4[L8_8]
  if L8_8 == nil then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = L1_1.byte
  L8_8 = L8_8(L1_1, L5_5 + 2)
  L8_8 = L4_4[L8_8]
  if L8_8 == nil then
    L8_8 = L1_1.byte
    L8_8 = L8_8(L1_1, L5_5 + 3)
    L8_8 = L4_4[L8_8]
    if L8_8 == nil then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
  end
  L8_8 = mp
  L8_8 = L8_8.getfilename
  L8_8 = L8_8()
  if string.find(L8_8, "->(Rtf", 1, true) ~= nil or string.find(L8_8, "->xl/embeddings/oleObject", 1, true) ~= nil then
    mp.set_mpattribute("Lua:OLE.ShellcodeInSuspiciousFile")
  end
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
