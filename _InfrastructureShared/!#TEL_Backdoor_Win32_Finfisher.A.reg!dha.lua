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
L1_1 = L1_1(L0_0, "hklm\\system\\currentcontrolset\\services", 1, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(tostring(headerpage))
if string.find(L1_1, "rpcsrv.dat", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
