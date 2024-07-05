local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[3].utf8p2)
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "net.webclient", 1, true) and string.find(L0_0, "download", 1, true) and (string.match(L0_0, "[^s]iex[^e]") or string.find(L0_0, "invoke-expr", 1, true) or string.find(L0_0, ".bat", 1, true) or string.find(L0_0, ".ps1", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
