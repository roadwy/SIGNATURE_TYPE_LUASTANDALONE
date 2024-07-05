local L0_0, L1_1, L2_2, L3_3, L4_4
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(string.sub(bm.get_imagepath(), -12))
if L4_4 == "\\msiexec.exe" then
  L1_1, L2_2 = string.find(L0_0, "\".*%.ps1\"", 1, false)
  if L1_1 ~= nil then
    L3_3 = string.sub(L0_0, L1_1 + 1, L2_2 - 1)
    if sysio.IsFileExists(L3_3) then
      bm.add_threat_file(L3_3)
    end
  end
  return mp.INFECTED
end
return mp.CLEAN
