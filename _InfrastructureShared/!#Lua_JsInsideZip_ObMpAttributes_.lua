local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 ~= nil and (L0_0:find(".zip->", 1, true) or L0_0:find(".7z->", 1, true) or L0_0:find(".tar.gz->", 1, true) or L0_0:find(".rar->", 1, true)) then
  if L0_0:match("%->.+/") or L0_0:match("%->.+\\") or L0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  if string.sub(L0_0, -3) == ".js" or string.sub(L0_0, -4) == ".jse" or string.sub(L0_0, -4) == ".wsf" then
    return mp.INFECTED
  end
end
return mp.CLEAN
