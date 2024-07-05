local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 126976 or L0_0 > 655360 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L0_0 - 4096, 3840)
L1_1 = L1_1(L2_2, L2_2(L0_0 - 4096, 3840))
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "name=\"vbaproject\"", 1, true)
if L2_2 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "excel4intlmacrosheets", 1, true)
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L2_2("Lua:vbaproject.s001")
L2_2 = tostring
L2_2 = L2_2(mp.readfile(L0_0 - 13568, 12288))
if L2_2 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(L2_2, "[Testing]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L2_2 = string.lower(L2_2)
if string.find(L2_2, "regsvr32", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.Regsvr32.S001")
  if string.find(L2_2, "regsvr32 -s", 1, true) ~= nil or string.find(L2_2, "regsvr32.exe -s", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ExcelSusp.Regsvr32Si.S001")
  end
end
if string.find(L2_2, "celod.wac", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelQakbotDrop.S001")
  if string.find(L2_2, "..\\celod.wac", 1, true) ~= nil then
    mp.set_mpattribute("Lua:ExcelQakbotDrop.S002")
  end
end
if string.find(L2_2, "caption         =   \"urldownloadtofilea\"", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.Urld.S001")
end
if string.find(L2_2, "c:\\users\\test\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or string.find(L2_2, "c:\\users\\user\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil or string.find(L2_2, "c:\\users\\doc\\appdata\\local\\temp\\vbe\\", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSusp.User.S001")
end
if string.find(L2_2, "/190.", 1, true) ~= nil or string.find(L2_2, "/188.", 1, true) ~= nil or string.find(L2_2, "/185.", 1, true) ~= nil or string.find(L2_2, "/94.", 1, true) ~= nil or string.find(L2_2, "/5.", 1, true) ~= nil or string.find(L2_2, "/84.", 1, true) ~= nil or string.find(L2_2, "/194.", 1, true) ~= nil or string.find(L2_2, "/23.", 1, true) ~= nil or string.find(L2_2, "/101.", 1, true) ~= nil then
  mp.set_mpattribute("Lua:ExcelSuspicious.Ip.S001")
end
return mp.CLEAN
