function add_it(A0_0)
  if string.find(A0_0, "\\powershell%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\system32\\cmd%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\monagentlauncher%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\lwl%.profileunity%.client%.cmdservice%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\noxcmdsvc%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\cmdagent%.exe") ~= nil then
    return
  elseif string.find(A0_0, "\\cbfsflt2017net%.dll") ~= nil then
    return
  elseif string.find(A0_0, "\\msica%.dll") ~= nil then
    return
  elseif string.find(A0_0, "\\ratoken%.dll") ~= nil then
    return
  else
    bm.add_related_file(mp.ContextualExpandEnvironmentVariables(A0_0))
  end
end
function match_extension(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6
  L5_6 = A1_2
  for L5_6 in L2_3(L3_4, L4_5) do
    add_it(L5_6)
  end
  L5_6 = A1_2
  for L5_6 in L2_3(L3_4, L4_5) do
    add_it(L5_6)
  end
  L5_6 = A1_2
  for L5_6 in L2_3(L3_4, L4_5) do
    add_it(L5_6)
  end
  L5_6 = A1_2
  for L5_6 in L2_3(L3_4, L4_5) do
    add_it(L5_6)
  end
  L5_6 = A1_2
  for L5_6 in L2_3(L3_4, L4_5) do
    add_it(L5_6)
  end
end
function process_alias(A0_7)
  local L1_8, L2_9, L3_10, L4_11, L5_12
  L1_8 = A0_7.matched
  if L1_8 then
    L1_8 = A0_7.utf8p2
    if L1_8 ~= nil then
      L1_8 = string
      L1_8 = L1_8.lower
      L1_8 = L1_8(L2_9)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      L2_9(L3_10, L4_11)
      for L5_12 in L2_9(L3_10, L4_11) do
        add_it(L5_12)
      end
      for L5_12 in L2_9(L3_10, L4_11) do
        add_it(L5_12)
      end
    end
  end
end
process_alias(this_sigattrlog[1])
process_alias(this_sigattrlog[2])
process_alias(this_sigattrlog[3])
process_alias(this_sigattrlog[4])
return mp.INFECTED
