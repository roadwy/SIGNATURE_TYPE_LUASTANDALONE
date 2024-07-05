local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 20481 or L0_0 > 131072 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 4096
L1_1 = L1_1(L2_2, L0_0 - 4097)
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
mp.readprotection(true)
if L2_2 == nil or L2_2 == "" or string.len(L2_2) < 5 then
  return mp.CLEAN
end
if string.match(L2_2, "%d%d%d+%.png") then
  mp.set_mpattribute("Lua:SuspiciousPNGinExcel")
end
if string.match(L2_2, "please click \"enable content\"") then
  mp.set_mpattribute("Lua:SuspiciousEnableContent")
end
if string.find(L2_2, "excel.exe", 1, true) == nil then
  mp.set_mpattribute("Lua:SuspiciousExeinExcel")
end
if string.find(L2_2, "regsvr32.exe", 1, true) then
  mp.set_mpattribute("Lua:SuspiciousRegsvr32inExcel")
end
if string.find(L2_2, "rundll32.exe", 1, true) then
  mp.set_mpattribute("Lua:SuspiciousRundll32inExcel")
end
if string.find(L2_2, "powershell", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspiciousPowerShellCmdinExcel")
end
if string.find(L2_2, "iex", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspiciousPowerShellIEXinExcel")
end
if string.find(L2_2, "curl", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspiciousCRULinExcel")
end
if string.match(L2_2, "frombase64string") then
  mp.set_mpattribute("Lua:SuspiciousB64inExcel.S001")
end
if string.match(L2_2, "io%.memorystream") then
  mp.set_mpattribute("Lua:SuspiciousStreaminExcel.S001")
end
if string.match(L2_2, "reflection%.assembly") then
  mp.set_mpattribute("Lua:SuspiciousReflectioninExcel.S001")
end
if string.match(L2_2, "new%-object") then
  mp.set_mpattribute("Lua:SuspiciousObjectinExcel.S001")
end
if string.match(L2_2, "h4siaaaa") then
  mp.set_mpattribute("Lua:SuspiciousGZB64inExcel.S001")
end
if string.match(L2_2, "%.org/%w+%.ps") then
  mp.set_mpattribute("Lua:SuspiciousPSinExcel")
end
if string.match(L2_2, "urldownloadtofile") or string.match(L2_2, "createdirectory") then
  mp.set_mpattribute("Lua:SuspiciousAPIinExcel")
end
if string.match(L2_2, "excel 4.0") then
  mp.set_mpattribute("Lua:Excel40")
end
return mp.CLEAN
