local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L7_7 = L7_7(L6_6.image_path)
    if mp.bitand(L6_6.reason_ex, 1) == 1 and (string.find(L7_7, "\\program files (x86)\\", 1, true) or string.find(L7_7, "\\program files\\", 1, true) or string.find(L7_7, "\\winreseau.exe", 1, true)) then
      return mp.CLEAN
    end
  end
end
L7_7 = L3_3()
L5_5 = "\\program files\\"
L6_6 = 1
L7_7 = true
if not L3_3 then
  L5_5 = "\\program files (x86)\\"
  L6_6 = 1
  L7_7 = true
  if not L3_3 then
    L5_5 = "\\putty.exe"
    L6_6 = 1
    L7_7 = true
    if not L3_3 then
      L5_5 = "\\taputty.exe"
      L6_6 = 1
      L7_7 = true
      if not L3_3 then
        L5_5 = "\\njlink.exe"
        L6_6 = 1
        L7_7 = true
        if not L3_3 then
          L5_5 = "\\bmc"
          L6_6 = 1
          L7_7 = true
          if not L3_3 then
            L5_5 = "\\ebarsoftware"
            L6_6 = 1
            L7_7 = true
            if not L3_3 then
              L5_5 = "\\aethos"
              L6_6 = 1
              L7_7 = true
              if not L3_3 then
                L5_5 = "\\aquasuite_rap"
                L6_6 = 1
                L7_7 = true
                if not L3_3 then
                  L5_5 = "\\runremote"
                  L6_6 = 1
                  L7_7 = true
                  if not L3_3 then
                    L5_5 = "\\util\\bin\\ssh"
                    L6_6 = 1
                    L7_7 = true
                    if not L3_3 then
                      L5_5 = "\\tightvnc"
                      L6_6 = 1
                      L7_7 = true
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
elseif L3_3 then
  return L3_3
end
if L4_4 then
else
end
if L3_3 ~= "" then
  L5_5 = L3_3
  L6_6 = " -pw "
  L7_7 = 1
  if L4_4 then
    L5_5 = L3_3
    L6_6 = " -P "
    L7_7 = 1
    if L4_4 then
      L5_5 = L3_3
      L6_6 = " -R "
      L7_7 = 1
      if L4_4 then
        return L4_4
      end
    end
  end
end
return L4_4
