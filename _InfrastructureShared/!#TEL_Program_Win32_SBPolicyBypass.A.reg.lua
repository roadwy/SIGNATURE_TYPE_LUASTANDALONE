local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
L0_0 = L0_0(L1_1, L1_1(mp.CONTEXT_DATA_FILENAME))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "hklm\\system\\currentcontrolset\\control\\secureboot\\state", 1, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(tostring(headerpage))
if string.find(L1_1, "{68baf0cf-8e96-4cd9-8f02-5a162dc86f12}", 1, true) ~= nil or string.find(L1_1, "{e15ae303-8ae6-4c44-847a-152c2019fe85}", 1, true) ~= nil or string.find(L1_1, "{8d70e18f-c94b-4dde-8900-569f4a3b370a}", 1, true) ~= nil or string.find(L1_1, "{4217eb99-f9d8-4867-ad00-4a36563ebe23}", 1, true) ~= nil or string.find(L1_1, "{1b9a9f0f-cbf7-4742-93a1-2fe3ffaeff98}", 1, true) ~= nil or string.find(L1_1, "{6a093464-7cec-4f19-adb0-a47228778ec3}", 1, true) ~= nil or string.find(L1_1, "{9ed089a1-8e30-420a-9285-4427ace66ba5}", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
