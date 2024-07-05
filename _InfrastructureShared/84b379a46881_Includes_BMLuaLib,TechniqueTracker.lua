local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
function L0_0(A0_13, A1_14)
  local L3_15, L4_16
  if A1_14 == nil then
    return L3_15
  end
  if L3_15 <= 0 then
    return L3_15
  end
  for _FORV_5_ = 1, #A0_13 do
    if A0_13[_FORV_5_] == A1_14 then
      return true
    end
  end
  return L3_15
end
IsArrayMember = L0_0
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.utf8p2
    L4_4 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3))
    L0_0 = L1_1
  end
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  "firefox.exe",
  "python.exe",
  "rundll32.exe",
  "regsvr32.exe",
  "psexesvc.exe",
  "psexec.exe",
  "services.exe",
  "wininit.exe",
  "wmic.exe"
}
L2_2 = "winword.exe"
L3_3 = "mspub.exe"
L4_4 = "excel.exe"
L2_2 = IsProcNameInParentProcessTree
L3_3 = "BM"
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = {}
L3_3 = 0
L4_4 = 0
for L8_8 in L5_5(L6_6, L7_7) do
  L3_3 = L3_3 + 1
  L9_9(L10_10, L11_11)
  L4_4 = 0
  for L12_12 in L9_9(L10_10, L11_11) do
    L4_4 = L4_4 + 1
    L2_2[L3_3][L4_4] = string.lower(L12_12)
  end
end
for L10_10 = 1, #L2_2 do
  for _FORV_15_ = 1, #L2_2[L10_10] do
    if L6_6 == 0 then
      if L11_11 == 0 and (string.sub(L2_2[L10_10][_FORV_15_], -9) == "bitsadmin" or string.sub(L2_2[L10_10][_FORV_15_], -13) == "bitsadmin.exe") then
      elseif L11_11 == 1000 and L2_2[L10_10][_FORV_15_] == "/transfer" or L11_11 == 1000 and L2_2[L10_10][_FORV_15_] == "/addfile" then
      elseif L11_11 == 2000 and L2_2[L10_10][_FORV_15_] == "/upload" then
      elseif L11_11 == 2000 and string.sub(L2_2[L10_10][_FORV_15_], 1, 4) == "http" then
      elseif L11_11 == 3000 and string.match(L2_2[L10_10][_FORV_15_], "\\\\[^ ]\\C$[^ ]* [^ ]+") ~= nil then
        L5_5[#L5_5 + 1] = L2_2[L10_10][_FORV_15_]
      end
    end
    if L6_6 == 1 then
      if L11_11 == 0 and _FORV_15_ == 1 and L2_2[L10_10][_FORV_15_] == "start" then
      elseif L11_11 == 1000 and string.match(L2_2[L10_10][_FORV_15_], "\\\\[^ ]\\C$[^ ]* [^ ]+") ~= nil and IsArrayMember(L5_5, L2_2[L10_10][_FORV_15_]) == true and string.sub(L2_2[L10_10][_FORV_15_], -4) == ".exe" or L11_11 == 0 and _FORV_15_ == 1 and string.match(L2_2[L10_10][_FORV_15_], "\\\\[^ ]\\C$[^ ]* [^ ]+") ~= nil and IsArrayMember(L5_5, L2_2[L10_10][_FORV_15_]) == true and string.sub(L2_2[L10_10][_FORV_15_], -4) == ".exe" then
      elseif L11_11 == 0 and _FORV_15_ > 1 and string.match(L2_2[L10_10][_FORV_15_], "\\\\[^ ]\\C$[^ ]* [^ ]+") ~= nil and IsArrayMember(L5_5, L2_2[L10_10][_FORV_15_]) == true then
      elseif L11_11 == 2000 and _FORV_15_ > 1 and string.match(L2_2[L10_10][_FORV_15_], "\\\\[^ ]\\C$[^ ]* [^ ]+") ~= nil and IsArrayMember(L5_5, L2_2[L10_10][_FORV_15_]) == false then
        L5_5[#L5_5 + 1] = L2_2[L10_10][_FORV_15_]
      end
    end
    if L6_6 == 9999 then
      return mp.INFECTED
    end
  end
end
return L7_7
