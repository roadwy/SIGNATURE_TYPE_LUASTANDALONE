local L0_0, L1_1
function L0_0(A0_2, A1_3)
  local L2_4, L3_5, L4_6
  L2_4 = string
  L2_4 = L2_4.sub
  L3_5 = A0_2
  L4_6 = 1
  L2_4 = L2_4(L3_5, L4_6, string.len(A1_3))
  L2_4 = L2_4 == A1_3
  return L2_4
end
starts = L0_0
function L0_0(A0_7)
  local L1_8
  L1_8 = A0_7
  if starts(string.lower(A0_7), "\\device\\") then
    L1_8 = MpCommon.PathToWin32Path(A0_7)
  end
  return L1_8
end
towin32path = L0_0
function L0_0(A0_9)
  local L1_10
  L1_10 = towin32path
  L1_10 = L1_10(A0_9)
  if L1_10 == nil then
    return nil
  end
  if #L1_10 > 4 and L1_10:sub(1, 4) == "\\\\?\\" then
    L1_10 = L1_10:sub(5)
  end
  return string.lower(L1_10)
end
normalize_path = L0_0
