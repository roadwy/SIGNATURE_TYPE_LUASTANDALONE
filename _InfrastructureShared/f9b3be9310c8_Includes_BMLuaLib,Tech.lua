local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L1_1 = 0
L2_2 = nil
L3_3 = {}
L4_4 = 0
function L5_5(A0_14)
  local L1_15
  L1_15 = string.match(A0_14, "(%.[^%.]+)$")
  if L1_15 ~= nil and L1_15 ~= "" and string.find(L1_15, "/", 1, true) == nil and GetExtensionClassEx(L1_15, true) == 0 and IsExtensionDatePattern(L1_15) == false then
    if _UPVALUE0_[L1_15] ~= nil then
      if not IsStringInTable(_UPVALUE0_[L1_15], A0_14) then
        table.insert(_UPVALUE0_[L1_15], A0_14)
      end
    else
      _UPVALUE0_[L1_15] = {A0_14}
      _UPVALUE1_ = _UPVALUE1_ + 1
    end
  end
end
addExtensionToList = L5_5
L5_5 = bm
L5_5 = L5_5.GetSignatureMatchDuration
L5_5 = L5_5()
if L5_5 > 100000000 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = bm
L5_5 = L5_5.get_imagepath
L5_5 = L5_5()
L5_5 = L5_5.lower
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  if L6_6 then
    return L6_6
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L2_2 = L6_6
      L6_6(L7_7)
      L2_2 = nil
    end
  end
end
if L4_4 > 3 then
  return L6_6
end
for L9_9, L10_10 in L6_6(L7_7) do
  if L0_0 ~= nil then
  elseif L1_1 < L11_11 then
    L0_0 = L9_9
    L1_1 = #L10_10
  end
end
if L1_1 < 8 then
  return L6_6
end
if L6_6 ~= nil then
else
end
if not L7_7 then
elseif L7_7 then
  return L7_7
end
L7_7(L8_8, L9_9, L10_10)
L12_12 = L5_5
L9_9(L10_10, L11_11, L12_12)
L12_12 = L6_6
L9_9(L10_10, L11_11, L12_12)
L12_12 = L0_0
L9_9(L10_10, L11_11, L12_12)
for L12_12, L13_13 in L9_9(L10_10) do
  bm.add_related_file(L13_13)
  table.insert(L8_8, L13_13)
end
L12_12 = table
L12_12 = L12_12.concat
L13_13 = L8_8
L13_13 = L12_12(L13_13, ",")
L9_9(L10_10, L11_11, L12_12, L13_13, L12_12(L13_13, ","))
L9_9()
L9_9()
L12_12 = "Impact_FileEncryptionSuspicious"
L9_9(L10_10, L11_11, L12_12)
L9_9(L10_10, L11_11)
return L9_9
