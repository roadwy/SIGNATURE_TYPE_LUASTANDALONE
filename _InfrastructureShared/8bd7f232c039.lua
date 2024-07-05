local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
L9_9 = L9_9(mp.GetProcessCommandLine(L8_8))
if string.find(L9_9, " /nointeractive", 1, true) then
  L7_7 = true
end
if L7_7 == false then
  return mp.CLEAN
end
while 0 <= 5 do
  if 0 == 0 then
    L4_4, L0_0 = pcall(mp.GetParentProcInfo)
  else
    L4_4, L0_0 = pcall(mp.GetParentProcInfo, L1_1)
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
  L2_2 = string.lower(L2_2)
  L3_3 = string.match(L2_2, "\\([^\\]+)$")
  if L3_3 == nil or L3_3 == "" then
    break
  end
  if L3_3 == "psexecsvc.exe" or L3_3 == "wmiprvse.exe" or L3_3 == "gpscript.exe" or L3_3 == "winrm.exe" then
    L6_6 = true
  end
  if L3_3 == "services.exe" then
    L5_5 = true
  end
end
if L6_6 == false or L5_5 == false then
  return mp.CLEAN
end
return mp.INFECTED
