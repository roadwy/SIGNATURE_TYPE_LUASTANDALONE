local L0_0, L1_1, L2_2, L3_3
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.ContextualExpandEnvironmentVariables
  L3_3 = L3_3(this_sigattrlog[1].utf8p1)
  L2_2 = L3_3
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.ContextualExpandEnvironmentVariables
    L3_3 = L3_3(this_sigattrlog[2].utf8p1)
    L2_2 = L3_3
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.ContextualExpandEnvironmentVariables
      L3_3 = L3_3(this_sigattrlog[3].utf8p1)
      L2_2 = L3_3
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.ContextualExpandEnvironmentVariables
        L3_3 = L3_3(this_sigattrlog[4].utf8p1)
        L2_2 = L3_3
      end
    end
  end
end
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L2_2, "\\([^\\]+%.exe)")
  L0_0 = L3_3
  if L0_0 ~= nil then
    L3_3 = bm
    L3_3 = L3_3.get_imagepath
    L3_3 = L3_3()
    if L3_3 ~= nil then
      L1_1 = string.match(L3_3, "\\([^\\]+%.exe)")
      if L1_1 ~= nil and L0_0 ~= L1_1 then
        return mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
