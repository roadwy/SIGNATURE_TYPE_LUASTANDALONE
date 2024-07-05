local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 990000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_versioninfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "googletalk.exe" and string.sub(L2_2, -28, -1) == "\\appdata\\roaming\\google talk" then
  return mp.INFECTED
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "skype.exe" and string.sub(L2_2, -28, -1) == "\\appdata\\roaming\\skype\\phone" then
  return mp.INFECTED
end
if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "advantage.exe" and string.sub(L2_2, -26, -1) == "\\appdata\\roaming\\advantage" then
  return mp.INFECTED
end
return mp.CLEAN
