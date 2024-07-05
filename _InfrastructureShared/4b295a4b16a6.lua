local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(tostring(headerpage))
if string.gsub(L0_0, "&#x0a;", "") == 0 then
  return mp.CLEAN
end
if string.gsub(L0_0, "&#x0d;", "") == 0 then
  return mp.CLEAN
end
if string.gsub(L0_0, "&#x0a;", "") > 50 and string.gsub(L0_0, "&#x0d;", "") > 50 then
  return mp.INFECTED
end
return mp.CLEAN
