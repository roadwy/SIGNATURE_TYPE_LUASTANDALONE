local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = L6_6.ppid
    if L7_7 ~= nil then
      L7_7 = "browser_childproc"
      if L6_6.reason == bm.RELATIONSHIP_CREATED then
        L7_7 = "browser_childproc_created"
      elseif L6_6.reason == bm.RELATIONSHIP_INJECTION then
        L7_7 = "browser_childproc_injected"
      elseif L6_6.reason == bm.RELATIONSHIP_INHERITED then
        L7_7 = "browser_childproc_inherited"
      end
      bm.trigger_sig_target_propagate("BM:BrowserChildProc.A", L7_7, L6_6.ppid)
    end
  end
end
return L2_2
