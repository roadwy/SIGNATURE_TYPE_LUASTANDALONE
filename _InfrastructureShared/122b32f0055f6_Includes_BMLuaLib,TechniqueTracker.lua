local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = {}
L3_3 = 0
L4_4 = 150000000
if L4_4 < L5_5 then
  return L5_5
end
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == 16385 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    if L10_10 ~= nil then
      L10_10 = sigattr_tail
      L10_10 = L10_10[L8_8]
      L10_10 = L10_10.utf8p1
      if L2_2[L10_10] == nil then
        L2_2[L10_10] = true
        bm.add_related_file(L10_10)
        if L10_10:match("%.[^/%.]+$") ~= nil then
          if L1_1[L10_10:match("%.[^/%.]+$")] == nil then
            L3_3 = L3_3 + 1
            L1_1[L10_10:match("%.[^/%.]+$")] = 1
          else
            L1_1[L10_10:match("%.[^/%.]+$")] = L1_1[L10_10:match("%.[^/%.]+$")] + 1
          end
        end
      end
    end
  end
end
for L9_9, L10_10 in L6_6(L7_7) do
end
if L3_3 < 3 and L5_5 >= 5 then
  L6_6()
  L6_6()
  L9_9 = "Impact_CcryptEncryption"
  L6_6(L7_7, L8_8, L9_9)
  L6_6()
  return L6_6
end
return L6_6
