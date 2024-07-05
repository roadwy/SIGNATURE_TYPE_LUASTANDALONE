local L0_0
if this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
  if string.find(L0_0, "enc", 1, true) and (string.find(L0_0, "-aes-256-cbc", 1, true) or string.find(L0_0, "-aes-256-ecb", 1, true)) and string.find(L0_0, "-base64", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
