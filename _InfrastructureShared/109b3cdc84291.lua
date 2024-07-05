local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_sigattr_event_count
L1_1 = 16384
L0_0 = L0_0(L1_1)
if L0_0 > 50 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L0_0 = L1_1.utf8p2
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.utf8p2
          if L1_1 ~= nil then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[5]
            L0_0 = L1_1.utf8p2
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.utf8p2
            if L1_1 ~= nil then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[6]
              L0_0 = L1_1.utf8p2
            end
          end
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
    if sysio.IsFileExists(L6_6) == true then
      if string.find(string.lower(L6_6), "getupdatedates", 1, true) then
        return mp.CLEAN
      end
      if string.sub(L6_6, -4) ~= nil and ({
        [".exe"] = true
      })[string.sub(L6_6, -4)] ~= true then
        bm.add_related_file(L6_6)
      end
    end
  end
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
