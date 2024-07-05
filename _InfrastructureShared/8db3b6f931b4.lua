local L0_0, L1_1, L2_2
function L0_0(A0_3, A1_4)
  local L2_5, L3_6, L4_7, L5_8, L6_9, L7_10, L8_11, L9_12, L10_13, L11_14
  if A0_3 ~= nil and A1_4 ~= nil then
    L2_5 = type
    L3_6 = A1_4
    L2_5 = L2_5(L3_6)
  elseif L2_5 ~= "table" then
    L2_5 = nil
    return L2_5
  end
  L2_5 = A0_3
  L3_6 = {}
  for L7_10, L8_11 in L4_7(L5_8) do
    L9_12 = 0
    L10_13 = bm
    L10_13 = L10_13.get_process_relationships
    L11_14 = L2_5
    L11_14 = L10_13(L11_14)
    for _FORV_15_, _FORV_16_ in ipairs(L11_14) do
      if mp.bitand(_FORV_16_.reason_ex, 1) == 1 and string.sub(_FORV_16_.image_path, -string.len(L8_11)) == L8_11 then
        L2_5 = _FORV_16_.ppid
        L9_12 = L9_12 + 1
      end
      if L9_12 > 1 then
        return nil
      end
    end
    if L9_12 == 0 then
      return nil
    end
    table.insert(L3_6, L2_5)
  end
  return L3_6
end
checkProcessTree = L0_0
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 300000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.ppid
L2_2 = {
  "cmd.exe",
  "cmd.exe",
  "powershell.exe"
}
if checkProcessTree(L1_1, L2_2) == nil then
  return mp.CLEAN
end
return mp.INFECTED
