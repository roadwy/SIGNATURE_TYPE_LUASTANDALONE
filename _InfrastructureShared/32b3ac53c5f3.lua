local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L0_0, "/cp", -3, true)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, "/mv", -3, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "/wget", -5, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, "/curl", -5, true)
    end
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.GetParentProcInfo
  L2_2 = L2_2()
  if L2_2 ~= nil and L2_2.ppid ~= nil then
    L1_1 = L2_2.ppid
  end
end
L2_2 = nil
if L1_1 then
  _, L2_2 = bm.get_process_relationships(L1_1)
else
  _, L2_2 = bm.get_process_relationships()
end
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  bm.trigger_sig("BmTraverseTreeBlock", "Detected", _FORV_7_.ppid)
end
return mp.INFECTED
