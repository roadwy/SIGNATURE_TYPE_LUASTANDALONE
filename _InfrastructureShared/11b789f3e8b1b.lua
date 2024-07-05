local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.hasstandardentry
if L0_0 ~= true then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
  if L0_0 ~= false then
    L0_0 = peattributes
    L0_0 = L0_0.hasexports
    if L0_0 ~= false then
      L0_0 = pehdr
      L0_0 = L0_0.SizeOfImage
    end
  end
elseif L0_0 >= 393216 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if not L0_0 then
        L0_0 = hstrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if not L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if not L0_0 then
            L0_0 = hstrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
          end
        end
      end
    end
  end
end
L1_1 = hstrlog
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[9]
  L1_1 = L1_1.matched
end
L2_2 = hstrlog
L2_2 = L2_2[10]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[11]
  L2_2 = L2_2.matched
end
L3_3 = hstrlog
L3_3 = L3_3[12]
L3_3 = L3_3.matched
if L0_0 then
  L4_4 = 1
else
  L4_4 = L4_4 or 0
end
if L1_1 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L2_2 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L3_3 then
  L5_5 = 1
else
  L5_5 = L5_5 or 0
end
L4_4 = L4_4 + L5_5
if L4_4 >= 2 then
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
