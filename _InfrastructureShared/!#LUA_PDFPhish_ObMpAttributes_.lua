local L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = tostring
L0_0 = L0_0(mp.readfile(8192, 8192))
if string.find(L0_0, "https://ttraff.ru/", 1, true) ~= nil or string.find(L0_0, "https://ttraff.com/", 1, true) ~= nil or string.find(L0_0, "https://ttraff.me/", 1, true) ~= nil or string.find(L0_0, "https://ttraff.cc/", 1, true) ~= nil or string.find(L0_0, "https://ttraff.club/", 1, true) ~= nil or string.find(L0_0, "https://ttraff.link/", 1, true) ~= nil or string.find(L0_0, "https://cctraff.ru/", 1, true) ~= nil or string.find(L0_0, "https://ggtraff.ru/", 1, true) ~= nil or string.find(L0_0, "https://gettraff.ru/", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
