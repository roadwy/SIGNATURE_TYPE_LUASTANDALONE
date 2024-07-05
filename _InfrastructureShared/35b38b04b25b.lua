local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1, L2_2 = nil, nil
L1_1, L2_2 = string.find(L0_0, "/google-chrome", 1, true)
if L1_1 ~= nil and L2_2 ~= nil then
  return mp.INFECTED
end
L1_1, L2_2 = string.find(L0_0, "/chromium-browser", 1, true)
if L1_1 ~= nil and L2_2 ~= nil then
  return mp.INFECTED
end
L1_1, L2_2 = string.find(L0_0, "/soffice", 1, true)
if L1_1 ~= nil and L2_2 ~= nil then
  return mp.INFECTED
end
L1_1, L2_2 = string.find(L0_0, "/firefox", 1, true)
if L1_1 ~= nil and L2_2 ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
