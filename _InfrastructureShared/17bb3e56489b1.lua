local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.IsKnownFriendlyFile
L2_2 = L0_0
L3_3 = true
L4_4 = false
L1_1 = L1_1(L2_2, L3_3, L4_4)
if L1_1 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.image_path
  if L3_3 ~= nil then
    L3_3 = L2_2.image_path
    if L3_3 ~= "" then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = L2_2.image_path
      L3_3 = L3_3(L4_4)
      L4_4 = sysio
      L4_4 = L4_4.IsFileExists
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      if L4_4 then
        L4_4 = mp
        L4_4 = L4_4.IsKnownFriendlyFile
        L5_5 = L3_3
        L6_6 = true
        L4_4 = L4_4(L5_5, L6_6, false)
        if L4_4 == true then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
      end
    end
  end
end
function L3_3(A0_7)
  local L1_8, L2_9, L3_10
  L1_8 = A0_7.matched
  if L1_8 then
    L1_8 = A0_7.utf8p1
    if L1_8 ~= nil then
      L1_8 = string
      L1_8 = L1_8.lower
      L2_9 = A0_7.utf8p1
      L1_8 = L1_8(L2_9)
      L2_9 = string
      L2_9 = L2_9.match
      L3_10 = L1_8
      L2_9 = L2_9(L3_10, "([^\\]+)$")
      L3_10 = string
      L3_10 = L3_10.match
      L3_10 = L3_10(L1_8, "(.*)[/\\]")
      return L2_9, L3_10
    end
  end
end
parsePragmaAlias = L3_3
L3_3 = {}
function L4_4(A0_11)
  if parsePragmaAlias(A0_11) == nil then
    return false
  end
  _UPVALUE0_[parsePragmaAlias(A0_11)] = parsePragmaAlias(A0_11)
  return true
end
addToCleanList = L4_4
function L4_4(A0_12, A1_13)
  local L2_14, L3_15
  L2_14 = A1_13
  L3_15 = parsePragmaAlias
  L3_15 = L3_15(A0_12)
  if string.gsub(L3_15, "%.", "") < 2 then
    return A1_13
  end
  if _UPVALUE0_[string.match(L3_15, "(.+)%..+$")] ~= nil and _UPVALUE0_[string.match(L3_15, "(.+)%..+$")] == L3_15(A0_12) then
    L2_14 = L2_14 + 1
  end
  return L2_14
end
countTheMatches = L4_4
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[9]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[10]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[11]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[12]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[13]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = addToCleanList
L5_5 = this_sigattrlog
L5_5 = L5_5[14]
L4_4 = L4_4(L5_5)
if L4_4 == false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = 0
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[3]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[4]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[5]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[6]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[7]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
L5_5 = countTheMatches
L6_6 = this_sigattrlog
L6_6 = L6_6[8]
L5_5 = L5_5(L6_6, L4_4)
L4_4 = L5_5
if L4_4 >= 3 then
  L5_5 = mp
  L5_5 = L5_5.GetParentProcInfo
  L5_5 = L5_5()
  if L5_5 ~= nil then
    L6_6 = string
    L6_6 = L6_6.lower
    L6_6 = L6_6(L5_5.image_path)
    if sysio.IsFileExists(L6_6) then
      bm.add_related_file(L6_6)
    end
  end
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
