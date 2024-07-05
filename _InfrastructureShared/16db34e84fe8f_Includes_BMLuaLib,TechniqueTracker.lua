local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.wp2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.ppid
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.wp2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L1_1 = L2_2.ppid
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L3_3)
      L0_0 = L2_2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.wp2
      if L2_2 ~= nil then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L1_1 = L2_2.ppid
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(L3_3)
        L0_0 = L2_2
      end
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.wp2
        if L2_2 ~= nil then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[6]
          L1_1 = L2_2.ppid
          L2_2 = string
          L2_2 = L2_2.lower
          L2_2 = L2_2(L3_3)
          L0_0 = L2_2
        end
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[7]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[7]
          L2_2 = L2_2.wp2
          if L2_2 ~= nil then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[7]
            L1_1 = L2_2.ppid
            L2_2 = string
            L2_2 = L2_2.lower
            L2_2 = L2_2(L3_3)
            L0_0 = L2_2
          end
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[8]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[8]
            L2_2 = L2_2.wp2
            if L2_2 ~= nil then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[8]
              L1_1 = L2_2.ppid
              L2_2 = string
              L2_2 = L2_2.lower
              L2_2 = L2_2(L3_3)
              L0_0 = L2_2
            end
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[9]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[9]
              L2_2 = L2_2.wp2
              if L2_2 ~= nil then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[9]
                L1_1 = L2_2.ppid
                L2_2 = string
                L2_2 = L2_2.lower
                L2_2 = L2_2(L3_3)
                L0_0 = L2_2
              end
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[10]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[10]
                L2_2 = L2_2.wp2
                if L2_2 ~= nil then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[10]
                  L1_1 = L2_2.ppid
                  L2_2 = string
                  L2_2 = L2_2.lower
                  L2_2 = L2_2(L3_3)
                  L0_0 = L2_2
                end
              end
            end
          end
        end
      end
    end
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if not L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if not L2_2 then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[8]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L6_6 = true
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
        if not L2_2 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
  if sysio.IsFileExists(L7_7) then
    return mp.CLEAN
  end
end
L6_6 = "Impact_DiskWiper"
L3_3(L4_4, L5_5, L6_6)
L3_3()
return L3_3
