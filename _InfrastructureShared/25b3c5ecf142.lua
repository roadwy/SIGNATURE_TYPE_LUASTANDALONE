local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
for L4_4 = 1, L2_2.SIGATTR_LOG_SZ do
  L5_5 = string
  L5_5 = L5_5.lower
  L5_5 = L5_5(sigattr_head[L4_4].utf8p1)
  L0_0 = L5_5
  L5_5 = sigattr_head
  L5_5 = L5_5[L4_4]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = sigattr_head
    L5_5 = L5_5[L4_4]
    L5_5 = L5_5.attribute
    if L5_5 == 16384 then
      L5_5 = string
      L5_5 = L5_5.find
      L5_5 = L5_5(L0_0, ":\\", 1, true)
      if L5_5 == 2 then
        L5_5 = string
        L5_5 = L5_5.find
        L5_5 = L5_5(L0_0, "\\", 4, true)
        if L5_5 == nil then
          L5_5 = string
          L5_5 = L5_5.sub
          L5_5 = L5_5(L0_0, 0, 1)
          if string.len(L5_5) == 1 and string.match(L5_5, "[A-Za-z]") then
            return mp.INFECTED
          end
        end
      else
        L5_5 = string
        L5_5 = L5_5.find
        L5_5 = L5_5(L0_0, "\\\\", 1, true)
        if L5_5 == 0 then
          L5_5 = string
          L5_5 = L5_5.find
          L5_5 = L5_5(L0_0, "\\", 3, true)
          if L5_5 == nil then
            L5_5 = mp
            L5_5 = L5_5.INFECTED
            return L5_5
          end
        end
      end
    end
  end
end
return L1_1
