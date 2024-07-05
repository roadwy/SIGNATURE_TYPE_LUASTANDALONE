local L0_0, L1_1, L2_2, L3_3
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L2_2 = L0_0
  L3_3 = nil
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L1_1)
    L2_2 = L2_2(L3_3, "v9%.com")
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = string
      L3_3 = L3_3.lower
      L3_3 = L3_3(L1_1)
      L2_2 = L2_2(L3_3, "22find%.com")
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(L1_1)
        L2_2 = L2_2(L3_3, "22apple%.com")
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L3_3 = string
          L3_3 = L3_3.lower
          L3_3 = L3_3(L1_1)
          L2_2 = L2_2(L3_3, "qvo6%.com")
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L3_3 = string
            L3_3 = L3_3.lower
            L3_3 = L3_3(L1_1)
            L2_2 = L2_2(L3_3, "portaldosites%.com")
            if not L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L3_3 = string
              L3_3 = L3_3.lower
              L3_3 = L3_3(L1_1)
              L2_2 = L2_2(L3_3, "onmylike%.com")
              if not L2_2 then
                L2_2 = string
                L2_2 = L2_2.find
                L3_3 = string
                L3_3 = L3_3.lower
                L3_3 = L3_3(L1_1)
                L2_2 = L2_2(L3_3, "laban%.vn")
                if not L2_2 then
                  L2_2 = string
                  L2_2 = L2_2.find
                  L3_3 = string
                  L3_3 = L3_3.lower
                  L3_3 = L3_3(L1_1)
                  L2_2 = L2_2(L3_3, "delta-homes%.com")
                end
              end
            end
          end
        end
      end
    elseif L2_2 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, 1, 1)
      if L2_2 == "\"" then
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(L1_1)
        L3_3 = L2_2(L3_3, "iexplore.exe\"")
        if L2_2 then
          sysio.SetRegValueAsString(L0_0, nil, string.sub(L1_1, 2, L3_3 - 1))
        end
      else
        L2_2 = string
        L2_2 = L2_2.find
        L3_3 = string
        L3_3 = L3_3.lower
        L3_3 = L3_3(L1_1)
        L3_3 = L2_2(L3_3, "iexplore.exe")
        if L2_2 then
          sysio.SetRegValueAsString(L0_0, nil, string.sub(L1_1, 1, L3_3))
        end
      end
    end
  end
end
