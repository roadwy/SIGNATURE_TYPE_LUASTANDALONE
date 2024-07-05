local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 8192 or L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(1000, L0_0 - 1001)
mp.readprotection(true)
if string.find(L1_1, "console.log('cookies Set', key, value, '!IMPORTANT __Host- prefix: Cookies with names starting with __Host-", 1, true) ~= nil or string.find(L1_1, "console.log('cookies Set', key, value, '!IMPORTANT __Secure- prefix: Cookies with names starting with __Secure-", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
