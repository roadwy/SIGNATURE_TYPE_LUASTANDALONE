local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
string_starts = L0_0
RemoveKelihosASEPS = L0_0
if L0_0 then
  if L0_0 then
    for L3_3, L4_4 in L0_0(L1_1) do
      L5_5 = L4_4.Schema
      if L5_5 == "process" then
        L5_5 = sysio
        L5_5 = L5_5.GetFileNameFromProcess
        L5_5 = L5_5(L4_4.Path)
        if L5_5 ~= nil then
          RemoveKelihosASEPS(string.lower(L5_5))
        end
      end
    end
  end
end
