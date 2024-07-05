local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 24 or L0_0 > 255 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L1_1 = L1_1.find
L1_1 = L1_1(L1_1, "\\start menu\\programs\\startup\\%a+%.lnk", 1, false)
if L1_1 then
  L1_1 = tostring
  L1_1 = L1_1(headerpage)
  if string.lower(L1_1):find("\\all users\\ob%w+%.exe", 1, false) ~= nil or string.lower(L1_1):find("\\programdata\\ob%w+%.exe", 1, false) ~= nil or string.lower(L1_1):find("\\application data\\ob%w+%.exe", 1, false) ~= nil or string.lower(L1_1):find("\\appdata\\roaming\\ob%w+%.exe", 1, false) ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
