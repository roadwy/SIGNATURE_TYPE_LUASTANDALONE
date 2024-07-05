local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L1_1 = L1_1.utf8p2
              if L1_1 ~= nil then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[7]
                L0_0 = L1_1.utf8p2
              end
            else
              L1_1 = this_sigattrlog
              L1_1 = L1_1[8]
              L1_1 = L1_1.matched
              if L1_1 then
                L1_1 = this_sigattrlog
                L1_1 = L1_1[8]
                L1_1 = L1_1.utf8p2
                if L1_1 ~= nil then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[8]
                  L0_0 = L1_1.utf8p2
                end
              else
                L1_1 = this_sigattrlog
                L1_1 = L1_1[9]
                L1_1 = L1_1.matched
                if L1_1 then
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[9]
                  L1_1 = L1_1.utf8p2
                  if L1_1 ~= nil then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[9]
                    L0_0 = L1_1.utf8p2
                  end
                else
                  L1_1 = this_sigattrlog
                  L1_1 = L1_1[10]
                  L1_1 = L1_1.matched
                  if L1_1 then
                    L1_1 = this_sigattrlog
                    L1_1 = L1_1[10]
                    L1_1 = L1_1.utf8p2
                    if L1_1 ~= nil then
                      L1_1 = this_sigattrlog
                      L1_1 = L1_1[10]
                      L0_0 = L1_1.utf8p2
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L1_1 = false
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = mp
    L8_8 = L8_8.ContextualExpandEnvironmentVariables
    L8_8 = L8_8(L7_7)
    L7_7 = L8_8
    if L7_7 then
      L8_8 = L7_7.lower
      L8_8 = L8_8(L7_7)
      L7_7 = L8_8
      L8_8 = string
      L8_8 = L8_8.match
      L8_8 = L8_8(L7_7, "^c:\\program files %(x86%)\\adobe\\")
      if L8_8 == nil then
        L8_8 = string
        L8_8 = L8_8.match
        L8_8 = L8_8(L7_7, "^c:\\program files\\adobe\\")
      elseif L8_8 ~= nil then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = sysio
      L8_8 = L8_8.IsFileExists
      L8_8 = L8_8(L7_7)
      if L8_8 then
        L8_8 = mp
        L8_8 = L8_8.IsKnownFriendlyFile
        L8_8 = L8_8(L7_7, false, false)
        if not L8_8 then
          L8_8 = this_sigattrlog
          L8_8 = L8_8[2]
          L8_8 = L8_8.matched
          if L8_8 then
            L8_8 = "appdata\\local\\microsoft\\onedrive\\onedrive.exe"
            if string.sub(L7_7, -string.len(L8_8)) == L8_8 then
              return mp.CLEAN
            end
            if string.sub(L7_7, -62, -36) == "\\google\\chrome\\application\\" then
              return mp.CLEAN
            end
          end
          L8_8 = string
          L8_8 = L8_8.find
          L8_8 = L8_8(L7_7, ":\\users\\.+\\appdata\\local\\deepl\\app.+\\deepl%.exe")
          if L8_8 then
            L8_8 = mp
            L8_8 = L8_8.CLEAN
            return L8_8
          end
          L1_1 = true
          L8_8 = mp
          L8_8 = L8_8.ReportLowfi
          L8_8(L7_7, 1132070965)
        end
      end
    end
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[6]
L2_2 = L2_2.matched
if L2_2 and not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
