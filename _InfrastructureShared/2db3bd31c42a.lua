local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(this_sigattrlog[2].utf8p2)
  L0_0 = string.gsub(L0_0, " ", "")
  if string.len(L0_0) < 200 then
    return mp.CLEAN
  end
  if string.len(L0_0) > 1024 then
    return mp.INFECTED
  end
  if string.find(L0_0, "powershell", 1, true) or string.find(L0_0, "iex(", 1, true) or string.find(L0_0, "join[regex]::matches", 1, true) or string.find(L0_0, "::frombase64string", 1, true) then
    return mp.INFECTED
  end
  for _FORV_5_ in string.gmatch(L0_0, "^") do
  end
  for _FORV_5_ in string.gmatch(L0_0, "'.-'%+") do
  end
  for _FORV_5_ in string.gmatch(L0_0, "{%d%d?}{%d%d?}") do
  end
  if 0 + 1 + 1 + 1 >= 10 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
