local L0_0, L1_1, L2_2, L3_3, L4_4, L7_5
L4_4 = true
L7_5 = false
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
  if L3_3 == "services.exe" then
    L7_5 = true
  end
end
if true == false or L7_5 == false then
  return mp.CLEAN
end
return mp.INFECTED
