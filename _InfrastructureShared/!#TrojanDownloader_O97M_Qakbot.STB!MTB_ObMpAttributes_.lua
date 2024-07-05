local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16384 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not (L2_2 < 14) then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 > 100 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "vbaproject.bin", 1, true)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = tostring
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(L0_0 - 4096, 3840)
L2_2 = L2_2(L3_3, L3_3(L0_0 - 4096, 3840))
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L2_2)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L2_2, "name=\"vbaproject\"", 1, true)
if L3_3 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L2_2, "excel4intlmacrosheets", 1, true)
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L3_3("Lua:vbaproject.s001")
L3_3 = tostring
L3_3 = L3_3(mp.readfile(8192, 7936))
if L3_3 == nil then
  return mp.CLEAN
end
L3_3 = string.lower(L3_3)
if string.find(L3_3, "regsvr32", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.Regsvr32.S001")
  if string.find(L3_3, "regsvr32 -s", 1, true) ~= nil or string.find(L3_3, "regsvr32.exe -s", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ExcelSusp.Regsvr32Si.S001")
  end
end
if string.find(L3_3, "celod.wac", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelQakbotDrop.S001")
  if string.find(L3_3, "..\\celod.wac", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ExcelQakbotDrop.S002")
  end
end
if string.find(L3_3, "caption         =   \"urldownloadtofilea\"", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.Urld.S001")
end
if string.find(L3_3, "c:\\users\\test\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or string.find(L3_3, "c:\\users\\user\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or string.find(L3_3, "c:\\users\\doc\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.User.S001")
end
if string.find(L3_3, "/190.", 1, true) ~= nil or string.find(L3_3, "/188.", 1, true) ~= nil or string.find(L3_3, "/185.", 1, true) ~= nil or string.find(L3_3, "/94.", 1, true) ~= nil or string.find(L3_3, "/5.", 1, true) ~= nil or string.find(L3_3, "/84.", 1, true) ~= nil or string.find(L3_3, "/194.", 1, true) ~= nil or string.find(L3_3, "/23.", 1, true) ~= nil or string.find(L3_3, "/101.", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSuspicious.Ip.S001")
end
return mp.CLEAN
