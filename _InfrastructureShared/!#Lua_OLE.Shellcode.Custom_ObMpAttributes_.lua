local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not L0_0 or L0_0 > 7000 and L0_0 < 16000 or L0_0 > 22000 and L0_0 < 1300000 or L0_0 > 1600000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = nil
if L0_0 > 7000 and L0_0 < 22000 then
  L2_2 = tostring
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = 0
  L5_5 = 7000
  L9_9 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L3_3(L4_4, L5_5))
  L1_1 = L2_2
elseif L0_0 > 1300000 and L0_0 < 1600000 then
  L2_2 = tostring
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = 0
  L5_5 = 20000
  L9_9 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L3_3(L4_4, L5_5))
  L1_1 = L2_2
else
  L2_2 = tostring
  L3_3 = mp
  L3_3 = L3_3.readfile
  L4_4 = 0
  L5_5 = L0_0
  L9_9 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L3_3(L4_4, L5_5))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\208\207\017\224\161\177\026\225"
L5_5 = 1
L6_6 = true
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 or not L3_3 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L1_1
  L6_6 = "[Ee][Qq][Uu][Aa][Tt][Ii][Oo][Nn].3"
  L5_5 = L4_4(L5_5, L6_6)
  L3_3 = L5_5
  L2_2 = L4_4
  if not L2_2 or not L3_3 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = L2_2
L5_5 = {}
L5_5[184] = 5
L5_5[187] = 5
L5_5[185] = 5
L5_5[186] = 5
L5_5[190] = 5
L5_5[191] = 5
L5_5[188] = 5
L5_5[189] = 5
L5_5[203] = 1
L6_6 = {}
L6_6[129] = 6
L6_6[27] = 6
L6_6[247] = 2
L6_6[46] = 5
L6_6[45] = 5
L6_6[53] = 5
L6_6[5] = 5
L6_6[37] = 5
L7_7 = {}
L7_7[139] = 2
L8_8 = mp
L8_8 = L8_8.get_mpattribute
L9_9 = "SCRIPT:OLE.EquationCLSID"
L8_8 = L8_8(L9_9)
if L8_8 then
  L8_8 = L4_4 + 2048
  L2_2 = L8_8 + 14
else
  L8_8 = mp
  L8_8 = L8_8.get_mpattribute
  L9_9 = "SCPT:OLE.Equation3.A"
  L8_8 = L8_8(L9_9)
  if L8_8 then
    L2_2 = L4_4 + 33
  else
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
end
function L8_8(A0_10, A1_11)
  local L2_12
  L2_12 = {
    38,
    78,
    102,
    230,
    270,
    11305
  }
  for _FORV_6_, _FORV_7_ in ipairs(L2_12) do
    _UPVALUE0_ = A0_10 + 2048 + _FORV_7_
    if _UPVALUE0_ < _UPVALUE1_ and _UPVALUE2_[A1_11:byte(_UPVALUE0_)] then
      return _UPVALUE0_
    end
  end
  return nil
end
if L0_0 > L2_2 then
  L9_9 = L1_1.byte
  L9_9 = L9_9(L1_1, L2_2)
  L9_9 = L5_5[L9_9]
elseif not L9_9 then
  L9_9 = L8_8
  L9_9 = L9_9(L4_4, L1_1)
  L2_2 = L9_9
  if not L2_2 then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
end
L9_9 = L1_1.byte
L9_9 = L9_9(L1_1, L2_2)
L9_9 = L5_5[L9_9]
L9_9 = L9_9 or 0
L2_2 = L2_2 + L9_9
if L0_0 > L2_2 then
  L9_9 = L1_1.byte
  L9_9 = L9_9(L1_1, L2_2)
  L9_9 = L6_6[L9_9]
elseif not L9_9 then
  L9_9 = L8_8
  L9_9 = L9_9(L4_4, L1_1)
  L2_2 = L9_9
  if L2_2 then
    L9_9 = L1_1.byte
    L9_9 = L9_9(L1_1, L2_2)
    L9_9 = L6_6[L9_9]
  elseif not L9_9 then
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
end
L9_9 = L1_1.byte
L9_9 = L9_9(L1_1, L2_2)
L9_9 = L6_6[L9_9]
L9_9 = L9_9 or 0
L2_2 = L2_2 + L9_9
if L0_0 > L2_2 then
  L9_9 = L1_1.byte
  L9_9 = L9_9(L1_1, L2_2)
  L9_9 = L7_7[L9_9]
elseif not L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = L2_2 + 3
if L0_0 > L9_9 then
  L9_9 = L1_1.byte
  L9_9 = L9_9(L1_1, L2_2 + 2)
  L9_9 = L7_7[L9_9]
  if not L9_9 then
    L9_9 = L1_1.byte
    L9_9 = L9_9(L1_1, L2_2 + 3)
    L9_9 = L7_7[L9_9]
  end
elseif not L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = mp
L9_9 = L9_9.getfilename
L9_9 = L9_9()
if L9_9 and (string.find(L9_9, "->(Rtf", 1, true) ~= nil or string.find(L9_9, "->xl/embeddings/oleObject", 1, true) ~= nil) then
  mp.set_mpattribute("Lua:OLE.ShellcodeInSuspiciousFile")
end
return mp.INFECTED
