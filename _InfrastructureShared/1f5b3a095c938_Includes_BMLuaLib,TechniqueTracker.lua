local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = 0
L3_3 = 150000000
if L3_3 < L4_4 then
  return L4_4
end
if L4_4 == true then
  return L4_4
end
for L7_7 = 1, L0_0 do
  L8_8 = sigattr_tail
  L8_8 = L8_8[L7_7]
  L8_8 = L8_8.attribute
  if L8_8 == 16385 then
    L9_9 = sigattr_tail
    L9_9 = L9_9[L7_7]
    L9_9 = L9_9.utf8p1
    if L9_9 ~= nil then
      L9_9 = sigattr_tail
      L9_9 = L9_9[L7_7]
      L9_9 = L9_9.utf8p1
      if L1_1[L9_9] == nil then
        L1_1[L9_9] = true
        bm.add_related_file(L9_9)
        if L9_9:match("%.[^/%.]+$") == ".cpt" then
          L2_2 = L2_2 + 1
        end
      end
    end
  end
end
if L2_2 >= 10 then
  L4_4()
  L4_4()
  L7_7 = "Impact_CcryptEncryption"
  L4_4(L5_5, L6_6, L7_7)
  return L4_4
end
return L4_4
