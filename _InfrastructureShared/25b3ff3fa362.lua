local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
for L3_3 = 1, L1_1.SIGATTR_LOG_SZ do
  L4_4 = sigattr_tail
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sigattr_tail
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.attribute
    if L4_4 == 16393 then
      L4_4 = sigattr_tail
      L4_4 = L4_4[L3_3]
      L4_4 = L4_4.utf8p1
      if L4_4 then
        L5_5 = string
        L5_5 = L5_5.lower
        L5_5 = L5_5(L4_4)
        L4_4 = L5_5
        if L4_4 then
          L5_5 = string
          L5_5 = L5_5.find
          L5_5 = L5_5(L4_4, "useraccountcontrolsettings.exe")
          if not L5_5 then
            L5_5 = string
            L5_5 = L5_5.find
            L5_5 = L5_5(L4_4, "taskmgr.exe")
          elseif L5_5 then
            L5_5 = sigattr_tail
            L5_5 = L5_5[L3_3]
            L5_5 = L5_5.utf8p2
            if 1 < string.len(L5_5) then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
return L0_0
