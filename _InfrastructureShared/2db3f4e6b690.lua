local L0_0
L0_0 = ""
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
else
  return mp.CLEAN
end
if L0_0 ~= "" then
  if string.match(L0_0, "%.[a-z]+$") or string.match(L0_0, "%.[a-z]+\"$") or string.find(L0_0, "\\downloads\\", 1, true) then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN
