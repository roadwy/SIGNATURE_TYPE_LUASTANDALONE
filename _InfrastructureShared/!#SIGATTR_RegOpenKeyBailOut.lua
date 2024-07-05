local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = pe
L0_0 = L0_0.get_postemu_sigattr_log_tail_size
L0_0 = L0_0()
for L4_4 = L0_0, 1, -1 do
  L5_5 = pe
  L5_5 = L5_5.get_postemu_sigattr_log_tail
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L6_6 = L5_5.attribute
  if L6_6 ~= 12305 then
    L6_6 = L5_5.attribute
    if L6_6 ~= 12363 then
      L6_6 = L5_5.attribute
      if L6_6 == 12300 then
        L6_6 = L5_5.p1
        if string.sub(L6_6, 1, string.len("SOFTWARE\\Microsoft\\VBA\\Monitors")) == "SOFTWARE\\Microsoft\\VBA\\Monitors" then
          return mp.CLEAN
        end
        return mp.INFECTED
      else
        L6_6 = mp
        L6_6 = L6_6.CLEAN
        return L6_6
      end
    end
  end
end
return L1_1
