local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L4_4 = true
L5_5 = false
L6_6 = false
L7_7 = false
L8_8 = mp
L8_8 = L8_8.GetScannedPPID
L8_8 = L8_8()
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = string
L9_9 = L9_9.lower
L10_10 = mp
L10_10 = L10_10.GetProcessCommandLine
L11_11 = L8_8
L11_11 = L10_10(L11_11)
L9_9 = L9_9(L10_10, L11_11, L10_10(L11_11))
L10_10 = string
L10_10 = L10_10.find
L11_11 = L9_9
L10_10 = L10_10(L11_11, " /all", 1, true)
if L10_10 then
  L5_5 = true
end
L10_10 = string
L10_10 = L10_10.find
L11_11 = L9_9
L10_10 = L10_10(L11_11, " /oldest", 1, true)
if L10_10 then
  L6_6 = true
end
L10_10 = string
L10_10 = L10_10.find
L11_11 = L9_9
L10_10 = L10_10(L11_11, " /shadow=", 1, true)
if L10_10 then
  L7_7 = true
end
if L5_5 ~= true and (L6_6 or L7_7) then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = 0
while L10_10 <= 5 do
  if L10_10 == 0 then
    L11_11 = pcall
    L0_0, L11_11 = mp.GetParentProcInfo, L11_11(mp.GetParentProcInfo)
    L4_4 = L11_11
  else
    L11_11 = pcall
    L0_0, L11_11 = mp.GetParentProcInfo, L11_11(mp.GetParentProcInfo, L1_1)
    L4_4 = L11_11
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
  L11_11 = string
  L11_11 = L11_11.lower
  L11_11 = L11_11(L2_2)
  L2_2 = L11_11
  L11_11 = mp
  L11_11 = L11_11.GetProcessCommandLine
  L11_11 = L11_11(L1_1)
  L9_9 = L11_11
  if L9_9 ~= nil then
    L11_11 = string
    L11_11 = L11_11.lower
    L11_11 = L11_11(L9_9)
    L9_9 = L11_11
    L11_11 = string
    L11_11 = L11_11.match
    L11_11 = L11_11(L9_9, "[a-zA-Z] (.+)$")
    if L11_11 ~= nil and (string.find(L11_11, ":\\windows", 1, true) or string.find(L11_11, ":\\program files", 1, true)) then
      return mp.CLEAN
    end
  end
  L11_11 = string
  L11_11 = L11_11.match
  L11_11 = L11_11(L2_2, "\\([^\\]+)$")
  L3_3 = L11_11
  if L3_3 == nil or L3_3 == "" then
    break
  end
  if L3_3 ~= "psexecsvc.exe" and L3_3 ~= "wmiprvse.exe" and L3_3 ~= "gpscript.exe" and L3_3 ~= "svchost.exe" then
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L2_2, ":\\windows\\", 2, true)
    if L11_11 == nil then
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L2_2, ":\\program files", 2, true)
    end
  elseif L11_11 == nil then
    L11_11 = mp
    L11_11 = L11_11.CLEAN
    return L11_11
  end
  L11_11 = string
  L11_11 = L11_11.find
  L11_11 = L11_11(L2_2, "^:\\program files", 2)
  if not L11_11 then
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L2_2, ":\\windows\\system32\\nxtcod.exe", 2, true)
    if not L11_11 then
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L2_2, ":\\windows\\ccm\\", 2, true)
    end
  elseif L11_11 then
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L2_2, "\\easeus\\easeus partition master\\bin\\", 2, true)
    if not L11_11 then
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L2_2, "\\common files\\mcafee\\systemcore\\", 2, true)
      if not L11_11 then
        L11_11 = string
        L11_11 = L11_11.find
        L11_11 = L11_11(L2_2, "\\mcafee\\endpoint security\\threat prevention\\", 2, true)
        if not L11_11 then
          L11_11 = mp
          L11_11 = L11_11.IsKnownFriendlyFile
          L11_11 = L11_11(L2_2, true, true)
        end
      end
    elseif L11_11 == true then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
  end
  L10_10 = L10_10 + 1
end
if L10_10 < 2 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = mp
L11_11 = L11_11.INFECTED
return L11_11
