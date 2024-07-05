local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() < 24 or string.sub(L0_0, -6) ~= "v2.exe" then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):match("\\users\\[^\\]+\\documents\\$") or L0_0:match("(.+\\)([^\\]+)$"):match("\\users\\[^\\]+\\my documents\\$") or L0_0:match("(.+\\)([^\\]+)$"):match("\\documents and settings\\[^\\]+\\my documents\\$") then
  return mp.INFECTED
end
return mp.CLEAN
