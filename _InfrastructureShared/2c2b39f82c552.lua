local L0_0, L1_1, L2_2, L3_3
L1_1 = false
L2_2 = false
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(this_sigattrlog[2].utf8p1)
  L0_0 = L3_3
  L1_1 = true
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(this_sigattrlog[3].utf8p1)
    L0_0 = L3_3
    L2_2 = true
  end
end
function L3_3(A0_4, A1_5)
  return string.match(A0_4, A1_5 .. "%-(.-).jar"):gsub("%D+", "")
end
findVersionfromPath = L3_3
if L0_0 ~= nil then
  if L1_1 == true then
    L3_3 = findVersionfromPath
    L3_3 = L3_3(L0_0, "webmvc")
    L3_3 = tonumber(L3_3)
    if L3_3 < 5318 and L3_3 > 5300 then
      return mp.INFECTED
    end
  end
  if L2_2 == true then
    L3_3 = findVersionfromPath
    L3_3 = L3_3(L0_0, "webflux")
    L3_3 = tonumber(L3_3)
    if L3_3 < 5219 and L3_3 > 5200 then
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
