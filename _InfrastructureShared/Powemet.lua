local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = sysio
L1_1 = L1_1.RegExpandUserKey
L2_2 = "HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run"
L1_1 = L1_1(L2_2)
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = sysio
  L3_3 = L3_3.RegEnumValues
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L0_0 = string.lower(sysio.GetRegValueAsString(L2_2, L8_8))
    if L0_0 ~= nil then
      if string.match(L0_0, "regsvr32.+/i%:http.+scrobj%.dll") and string.find(L0_0, "/u ", 1, true) and string.find(L0_0, "/s ", 1, true) then
        sysio.DeleteRegValue(L2_2, L8_8)
      end
      if string.find(L0_0, "powershell.exe", 1, true) and string.match(L0_0, "iex%s*%(%[text%.encoding%]%:%:ascii%.getstring%(%[convert%]%:%:frombase64string%(%(gp%s*%'hk") then
        sysio.DeleteRegValue(L2_2, L8_8)
      end
    end
  end
end
L3_3 = sysio
L3_3 = L3_3.RegOpenKey
L3_3 = L3_3(L4_4)
L2_2 = L3_3
if L2_2 then
  L3_3 = sysio
  L3_3 = L3_3.RegEnumValues
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L0_0 = string.lower(sysio.GetRegValueAsString(L2_2, L8_8))
    if L0_0 ~= nil then
      if string.match(L0_0, "regsvr32.+/i%:http.+scrobj%.dll") and string.find(L0_0, "/u ", 1, true) and string.find(L0_0, "/s ", 1, true) then
        sysio.DeleteRegValue(L2_2, L8_8)
      end
      if string.find(L0_0, "powershell.exe", 1, true) and string.match(L0_0, "iex%s*%(%[text%.encoding%]%:%:ascii%.getstring%(%[convert%]%:%:frombase64string%(%(gp%s*%'hk") then
        sysio.DeleteRegValue(L2_2, L8_8)
      end
    end
  end
end
