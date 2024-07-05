local L0_0, L1_1
function L0_0(A0_2)
  local L1_3, L2_4, L3_5
  L1_3 = string
  L1_3 = L1_3.lower
  L2_4 = A0_2
  L1_3 = L1_3(L2_4)
  L2_4 = pe
  L2_4 = L2_4.get_versioninfo
  L2_4 = L2_4()
  L2_4 = L2_4.ProductName
  if L2_4 == nil then
    L3_5 = false
    return L3_5
  end
  L3_5 = string
  L3_5 = L3_5.gsub
  L3_5 = L3_5(L2_4, "%s+$", "")
  if L1_3 == string.lower(L3_5) then
    return true
  end
  return false
end
checkProductName = L0_0
function L0_0(A0_6, A1_7)
  local L2_8, L3_9, L4_10, L5_11
  L2_8 = string
  L2_8 = L2_8.lower
  L3_9 = A1_7
  L2_8 = L2_8(L3_9)
  L3_9 = A0_6
  L4_10 = string
  L4_10 = L4_10.gsub
  L5_11 = pe
  L5_11 = L5_11.get_versioninfo
  L5_11 = L5_11()
  L5_11 = L5_11.ProductName
  L4_10 = L4_10(L5_11, "%s+$", "")
  L5_11 = string
  L5_11 = L5_11.lower
  L5_11 = L5_11(L4_10)
  if L2_8 == L5_11 and ({
    EQ = "exactmatch",
    FIRSTWORD = "firstword",
    FIRSTTWO = "firsttwo",
    LASTWORD = "lastword"
  })[L3_9] == "exactmatch" then
    return true
  elseif L2_8 == string.match(L5_11, "^%w+") and ({
    EQ = "exactmatch",
    FIRSTWORD = "firstword",
    FIRSTTWO = "firsttwo",
    LASTWORD = "lastword"
  })[L3_9] == "firstword" then
    return true
  elseif L2_8 == string.match(L5_11, "^%w+%s%w+") and ({
    EQ = "exactmatch",
    FIRSTWORD = "firstword",
    FIRSTTWO = "firsttwo",
    LASTWORD = "lastword"
  })[L3_9] == "firsttwo" then
    return true
  elseif L2_8 == string.match(L5_11, "%w+$") and ({
    EQ = "exactmatch",
    FIRSTWORD = "firstword",
    FIRSTTWO = "firsttwo",
    LASTWORD = "lastword"
  })[L3_9] == "lastword" then
    return true
  end
  return false
end
gencheckProductName = L0_0
function L0_0(A0_12, A1_13)
  local L2_14, L3_15, L4_16, L5_17, L6_18, L7_19
  L2_14 = {}
  L3_15 = {}
  for L7_19 in L4_16(L5_17, L6_18) do
    table.insert(L2_14, tonumber(L7_19))
  end
  for L7_19 in L4_16(L5_17, L6_18) do
    table.insert(L3_15, tonumber(L7_19))
  end
  if L4_16 ~= L5_17 then
    return L4_16
  end
  if L2_14 == L3_15 then
    return L4_16
  end
  for L7_19 = 1, #L2_14 do
    if L2_14[L7_19] < L3_15[L7_19] then
      return -1
    elseif L2_14[L7_19] > L3_15[L7_19] then
      return 1
    end
  end
  return L4_16
end
compareProductVersion = L0_0
function L0_0(A0_20, A1_21)
  local L2_22, L3_23
  L2_22 = pe
  L2_22 = L2_22.get_versioninfo
  L2_22 = L2_22()
  if L2_22 == nil then
    L3_23 = nil
    return L3_23
  end
  L3_23 = string
  L3_23 = L3_23.gsub
  L3_23 = L3_23(L2_22.ProductVersion, "%s+$", "")
  if A0_20 == "EQ" and compareProductVersion(L3_23, A1_21) == 0 then
    return true
  elseif A0_20 == "GT" and compareProductVersion(L3_23, A1_21) > 0 then
    return true
  elseif A0_20 == "GTE" and compareProductVersion(L3_23, A1_21) >= 0 then
    return true
  elseif A0_20 == "LT" and compareProductVersion(L3_23, A1_21) < 0 then
    return true
  elseif A0_20 == "LTE" and compareProductVersion(L3_23, A1_21) <= 0 then
    return true
  elseif compareProductVersion(L3_23, A1_21) == nil then
    return nil
  end
  return false
end
checkProductVersion = L0_0
function L0_0(A0_24, A1_25)
  local L2_26, L3_27
  L2_26 = pe
  L2_26 = L2_26.get_versioninfo
  L2_26 = L2_26()
  if L2_26 == nil then
    L3_27 = nil
    return L3_27
  end
  L3_27 = string
  L3_27 = L3_27.gsub
  L3_27 = L3_27(L2_26.FileVersion, "%s+$", "")
  if A0_24 == "EQ" and compareProductVersion(L3_27, A1_25) == 0 then
    return true
  elseif A0_24 == "GT" and compareProductVersion(L3_27, A1_25) > 0 then
    return true
  elseif A0_24 == "GTE" and compareProductVersion(L3_27, A1_25) >= 0 then
    return true
  elseif A0_24 == "LT" and compareProductVersion(L3_27, A1_25) < 0 then
    return true
  elseif A0_24 == "LTE" and compareProductVersion(L3_27, A1_25) <= 0 then
    return true
  elseif compareProductVersion(L3_27, A1_25) == nil then
    return nil
  end
  return false
end
checkFileVersion = L0_0
function L0_0()
  if pe.get_versioninfo().ProductName == nil then
    return true
  end
  return false
end
IsProductNameBlank = L0_0
