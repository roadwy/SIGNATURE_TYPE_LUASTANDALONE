local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8)
  return A0_8:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", function(A0_9)
    return "%" .. A0_9
  end)
end
escape_word = L0_0
L0_0 = tostring
L1_1 = headerpage
L0_0 = L0_0(L1_1)
L1_1 = L0_0.gsub
L1_1 = L1_1(L2_2, L3_3, L4_4)
L0_0 = L1_1
L1_1 = 0
if L0_0 then
  for L5_5, L6_6 in L2_2(L3_3, L4_4) do
    L7_7 = nil
    if L1_1 > 95 then
      break
    elseif L6_6 == "[0]" then
      L7_7 = L5_5:match("%+?%[('.-'),'.-%]")
    elseif L6_6 == "[1]" then
      L7_7 = L5_5:match("%+?%[%'.-',('.-').-%]")
    elseif L6_6 == "[2]" then
      L7_7 = L5_5:match("%+?%[%'.-','.-',('.-').-%]")
    elseif L6_6 == "[3]" then
      L7_7 = L5_5:match("%+?%[%'.-','.-','.-',('.-').-%]")
    elseif L6_6 == "[4]" then
      L7_7 = L5_5:match("%+?%[%'.-','.-','.-','.-',('.-').-%]")
    end
    if L7_7 then
      L0_0, _ = string.gsub(L0_0, escape_word(L5_5 .. L6_6), L7_7)
      L1_1 = L1_1 + 1
    end
  end
end
if L1_1 >= 5 then
  L5_5 = ""
  _ = L3_3
  L0_0 = L2_2
  function L5_5(A0_10)
    local L2_11
    L2_11 = string
    L2_11 = L2_11.format
    return L2_11("%c", tonumber(A0_10, 16))
  end
  _ = L3_3
  L0_0 = L2_2
  L5_5 = "%%"
  _ = L3_3
  L0_0 = L2_2
  function L5_5(A0_12)
    local L2_13
    L2_13 = string
    L2_13 = L2_13.format
    return L2_13("%c", tonumber(A0_12, 16))
  end
  _ = L3_3
  L0_0 = L2_2
  L5_5 = mp
  L5_5 = L5_5.ADD_VFO_TAKE_ACTION_ON_DAD
  L2_2(L3_3, L4_4, L5_5)
  return L2_2
end
return L2_2
