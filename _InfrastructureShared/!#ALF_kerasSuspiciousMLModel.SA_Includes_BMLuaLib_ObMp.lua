local L0_0
L0_0 = tostring
L0_0 = L0_0(headerpage)
L0_0 = L0_0 .. tostring(footerpage)
if L0_0 == nil then
  return mp.CLEAN
end
if contains(L0_0, {
  "readfile",
  "writefile",
  "lambda"
}) then
  return mp.INFECTED
end
return mp.CLEAN
