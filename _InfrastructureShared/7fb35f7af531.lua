local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
function L0_0(A0_12, A1_13)
  local L3_14, L4_15
  if A1_13 == nil then
    return L3_14
  end
  if L3_14 <= 0 then
    return L3_14
  end
  for _FORV_5_ = 1, #A0_12 do
    if A0_12[_FORV_5_] == A1_13 then
      return true
    end
  end
  return L3_14
end
IsArrayMember = L0_0
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    L3_3 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = mp
      L2_2 = L2_2.ContextualExpandEnvironmentVariables
      L3_3 = this_sigattrlog
      L3_3 = L3_3[2]
      L3_3 = L3_3.utf8p2
      L3_3 = L2_2(L3_3)
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
      L0_0 = L1_1
    end
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = {}
L2_2 = 0
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  L2_2 = L2_2 + 1
  L8_8(L9_9, L10_10)
  L3_3 = 0
  for L11_11 in L8_8(L9_9, L10_10) do
    L3_3 = L3_3 + 1
    L1_1[L2_2][L3_3] = string.lower(L11_11)
  end
end
for L9_9 = 1, #L1_1 do
  for _FORV_14_ = 1, #L1_1[L9_9] do
    if L5_5 == 0 then
      if L10_10 == 0 and (string.sub(L1_1[L9_9][_FORV_14_], -9) == "bitsadmin" or string.sub(L1_1[L9_9][_FORV_14_], -13) == "bitsadmin.exe") then
      elseif L10_10 == 1000 and L1_1[L9_9][_FORV_14_] == "/transfer" or L10_10 == 1000 and L1_1[L9_9][_FORV_14_] == "/addfile" then
      elseif L10_10 == 2000 and L1_1[L9_9][_FORV_14_] == "/upload" then
      elseif L10_10 == 2000 and string.sub(L1_1[L9_9][_FORV_14_], 1, 4) == "http" then
      elseif L10_10 == 3000 and string.match(L1_1[L9_9][_FORV_14_], "^%a:\\.+%.[^%.].+$") ~= nil then
        L4_4[#L4_4 + 1] = L1_1[L9_9][_FORV_14_]
      end
    end
    if L5_5 == 1 then
      if L10_10 == 0 and _FORV_14_ == 1 and L1_1[L9_9][_FORV_14_] == "start" then
      elseif L10_10 == 1000 and string.match(L1_1[L9_9][_FORV_14_], "^%a:\\.+%.[^%.].+$") ~= nil and IsArrayMember(L4_4, L1_1[L9_9][_FORV_14_]) == true and string.sub(L1_1[L9_9][_FORV_14_], -4) == ".exe" or L10_10 == 0 and _FORV_14_ == 1 and string.match(L1_1[L9_9][_FORV_14_], "^%a:\\.+%.[^%.].+$") ~= nil and IsArrayMember(L4_4, L1_1[L9_9][_FORV_14_]) == true and string.sub(L1_1[L9_9][_FORV_14_], -4) == ".exe" then
      elseif L10_10 == 0 and _FORV_14_ > 1 and string.match(L1_1[L9_9][_FORV_14_], "^%a:\\.+%.[^%.].+$") ~= nil and IsArrayMember(L4_4, L1_1[L9_9][_FORV_14_]) == true then
      elseif L10_10 == 2000 and _FORV_14_ > 1 and string.match(L1_1[L9_9][_FORV_14_], "^%a:\\.+%.[^%.].+$") ~= nil and IsArrayMember(L4_4, L1_1[L9_9][_FORV_14_]) == false then
        L4_4[#L4_4 + 1] = L1_1[L9_9][_FORV_14_]
      end
    end
    if L5_5 == 9999 then
      return mp.INFECTED
    end
  end
end
return L6_6
