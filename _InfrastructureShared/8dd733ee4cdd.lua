local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L4_4 = true
L5_5 = false
L6_6 = false
L7_7 = false
L8_8 = false
L9_9 = mp
L9_9 = L9_9.GetScannedPPID
L9_9 = L9_9()
if L9_9 == nil then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = string
L10_10 = L10_10.lower
L11_11 = mp
L11_11 = L11_11.GetProcessCommandLine
L12_12 = L9_9
L12_12 = L11_11(L12_12)
L10_10 = L10_10(L11_11, L12_12, L11_11(L12_12))
L11_11 = string
L11_11 = L11_11.find
L12_12 = L10_10
L11_11 = L11_11(L12_12, " /all", 1, true)
if L11_11 then
  L6_6 = true
end
L11_11 = string
L11_11 = L11_11.find
L12_12 = L10_10
L11_11 = L11_11(L12_12, " /oldest", 1, true)
if L11_11 then
  L7_7 = true
end
L11_11 = string
L11_11 = L11_11.find
L12_12 = L10_10
L11_11 = L11_11(L12_12, " /shadow=", 1, true)
if L11_11 then
  L8_8 = true
end
if L6_6 ~= true and (L7_7 or L8_8) then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = 0
while L11_11 <= 5 do
  if L11_11 == 0 then
    L12_12 = pcall
    L0_0, L12_12 = mp.GetParentProcInfo, L12_12(mp.GetParentProcInfo)
    L4_4 = L12_12
  else
    L12_12 = pcall
    L0_0, L12_12 = mp.GetParentProcInfo, L12_12(mp.GetParentProcInfo, L1_1)
    L4_4 = L12_12
  end
  if L4_4 ~= true or L0_0 == nil then
    break
  end
  L1_1 = L0_0.ppid
  if L1_1 == nil then
    break
  end
  L2_2 = L0_0.image_path
  if L2_2 == nil then
    break
  end
  L12_12 = string
  L12_12 = L12_12.lower
  L12_12 = L12_12(L2_2)
  L2_2 = L12_12
  L12_12 = mp
  L12_12 = L12_12.GetProcessCommandLine
  L12_12 = L12_12(L1_1)
  L10_10 = L12_12
  if L10_10 ~= nil then
    L12_12 = string
    L12_12 = L12_12.lower
    L12_12 = L12_12(L10_10)
    L10_10 = L12_12
    L12_12 = string
    L12_12 = L12_12.match
    L12_12 = L12_12(L10_10, "[a-zA-Z] (.+)$")
    if L12_12 ~= nil and (string.find(L12_12, ":\\windows", 1, true) or string.find(L12_12, ":\\program files", 1, true)) then
      return mp.CLEAN
    end
  end
  L12_12 = string
  L12_12 = L12_12.match
  L12_12 = L12_12(L2_2, "\\([^\\]+)$")
  L3_3 = L12_12
  if L3_3 == nil or L3_3 == "" then
    break
  end
  L12_12 = string
  L12_12 = L12_12.find
  L12_12 = L12_12(L2_2, ":\\windows\\", 2, true)
  if L12_12 == nil then
    L12_12 = string
    L12_12 = L12_12.find
    L12_12 = L12_12(L2_2, ":\\program files", 2, true)
    if L12_12 == nil then
      L12_12 = mp
      L12_12 = L12_12.CLEAN
      return L12_12
    end
  end
  L12_12 = string
  L12_12 = L12_12.find
  L12_12 = L12_12(L2_2, "^:\\program files", 2)
  if L12_12 then
    L12_12 = string
    L12_12 = L12_12.find
    L12_12 = L12_12(L2_2, "\\easeus\\easeus partition master\\bin\\", 2, true)
    if not L12_12 then
      L12_12 = string
      L12_12 = L12_12.find
      L12_12 = L12_12(L2_2, "\\common files\\mcafee\\systemcore\\", 2, true)
      if not L12_12 then
        L12_12 = string
        L12_12 = L12_12.find
        L12_12 = L12_12(L2_2, "\\mcafee\\endpoint security\\threat prevention\\", 2, true)
        if not L12_12 then
          L12_12 = mp
          L12_12 = L12_12.IsKnownFriendlyFile
          L12_12 = L12_12(L2_2, true, true)
        end
      end
    elseif L12_12 == true then
      L12_12 = mp
      L12_12 = L12_12.CLEAN
      return L12_12
    end
  end
  if L3_3 == "psexecsvc.exe" or L3_3 == "wmiprvse.exe" or L3_3 == "gpscript.exe" or L3_3 == "svchost.exe" then
    L5_5 = true
    break
  end
  L11_11 = L11_11 + 1
end
if L5_5 == false then
  L12_12 = mp
  L12_12 = L12_12.CLEAN
  return L12_12
end
L12_12 = mp
L12_12 = L12_12.INFECTED
return L12_12
