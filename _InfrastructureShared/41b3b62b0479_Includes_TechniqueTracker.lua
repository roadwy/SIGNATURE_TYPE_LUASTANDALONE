local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L0_0)
  L1_1 = L1_1(L2_2, "\\program files", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L0_0)
    L1_1 = L1_1(L2_2, "teamviewer", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L0_0)
      L1_1 = L1_1(L2_2, "\\windows\\", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(L0_0)
        L1_1 = L1_1(L2_2, "g2mcomm.exe", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = string
          L2_2 = L2_2.lower
          L2_2 = L2_2(L0_0)
          L1_1 = L1_1(L2_2, "teams", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = string
            L2_2 = L2_2.lower
            L2_2 = L2_2(L0_0)
            L1_1 = L1_1(L2_2, "wintrv.exe", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = string
              L2_2 = L2_2.lower
              L2_2 = L2_2(L0_0)
              L1_1 = L1_1(L2_2, "explorer.exe", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = string
                L2_2 = L2_2.lower
                L2_2 = L2_2(L0_0)
                L1_1 = L1_1(L2_2, "userinit.exe", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = string
                  L2_2 = L2_2.lower
                  L2_2 = L2_2(L0_0)
                  L1_1 = L1_1(L2_2, "lunc.exe", 1, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = string
                    L2_2 = L2_2.lower
                    L2_2 = L2_2(L0_0)
                    L1_1 = L1_1(L2_2, "lync.exe", 1, true)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = string
                      L2_2 = L2_2.lower
                      L2_2 = L2_2(L0_0)
                      L1_1 = L1_1(L2_2, "youdaodict.exe", 1, true)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1, L2_2 = nil, nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L1_1 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1))
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L2_2 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1))
end
if L2_2 ~= nil and L1_1 ~= nil and string.find(L2_2, L1_1, 1, true) and IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN
