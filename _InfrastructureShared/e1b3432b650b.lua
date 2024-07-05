local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = this_sigattrlog
L0_0 = L0_0[10]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[10]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.match
    L0_0 = L0_0(L1_1, L2_2)
    if L0_0 then
      if not L2_2 then
      elseif L2_2 then
        return L2_2
      end
    end
  end
end
L0_0 = nil
for L4_4 = 1, L2_2.SIGATTR_LOG_SZ do
  if L5_5 then
    if L5_5 == 16393 then
      L0_0 = L5_5.utf8p2
      if L0_0 ~= nil then
        for L9_9, L10_10 in L6_6(L7_7) do
          L10_10 = mp.ContextualExpandEnvironmentVariables(L10_10)
          if sysio.IsFileExists(L10_10) then
            bm.add_related_file(L10_10)
          end
        end
      end
    end
  end
end
if L3_3 then
  if L3_3 ~= nil then
  end
elseif L3_3 then
  if L3_3 ~= nil then
  end
elseif L3_3 then
  if L3_3 ~= nil then
  end
elseif L3_3 then
  if L3_3 ~= nil then
  end
elseif L3_3 then
  if L3_3 ~= nil then
  end
elseif L3_3 then
  if L3_3 ~= nil then
  end
end
if L1_1 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = sysio
    L9_9 = L9_9.IsFileExists
    L10_10 = L8_8
    L9_9 = L9_9(L10_10)
    if L9_9 then
      L9_9 = string
      L9_9 = L9_9.find
      L10_10 = L2_2
      L9_9 = L9_9(L10_10, string.sub(L8_8, -4), 1, true)
      if L9_9 then
        L9_9 = bm
        L9_9 = L9_9.add_related_file
        L10_10 = L8_8
        L9_9(L10_10)
      end
    end
  end
end
return L3_3
