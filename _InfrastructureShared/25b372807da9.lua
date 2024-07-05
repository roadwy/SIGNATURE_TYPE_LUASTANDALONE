local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
if L0_0 then
  L4_4 = 1
  L5_5 = true
  if not L1_1 then
    L4_4 = 1
    L5_5 = true
    if not L1_1 then
      L4_4 = 1
      L5_5 = true
      if not L1_1 then
        L4_4 = 1
        L5_5 = true
        if not L1_1 then
          L4_4 = 1
          L5_5 = true
          if not L1_1 then
            L4_4 = 1
            L5_5 = true
          end
        end
      end
    end
  elseif L1_1 then
    return L1_1
  end
end
for L4_4 = 1, L2_2.SIGATTR_LOG_SZ do
  L5_5 = sigattr_head
  L5_5 = L5_5[L4_4]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = sigattr_head
    L5_5 = L5_5[L4_4]
    L5_5 = L5_5.attribute
    if L5_5 ~= 16401 then
      L5_5 = sigattr_head
      L5_5 = L5_5[L4_4]
      L5_5 = L5_5.attribute
      if L5_5 ~= 16400 then
        L5_5 = sigattr_head
        L5_5 = L5_5[L4_4]
        L5_5 = L5_5.attribute
      end
    elseif L5_5 == 16404 then
      L5_5 = sigattr_head
      L5_5 = L5_5[L4_4]
      L5_5 = L5_5.utf8p1
      if sigattr_head[L4_4].utf8p1 ~= nil then
        if ({
          ["iexplore.exe"] = true,
          ["chrome.exe"] = true,
          ["firefox.exe"] = true,
          ["teams.exe"] = true,
          ["ccmsetup.exe"] = true,
          ["ccmexec.exe"] = true,
          ["outlook.exe"] = true,
          ["olk.exe"] = true
        })[string.match(string.lower(L5_5), "\\([^\\]+)$")] then
          return mp.CLEAN
        end
      end
    end
  end
end
return L1_1
