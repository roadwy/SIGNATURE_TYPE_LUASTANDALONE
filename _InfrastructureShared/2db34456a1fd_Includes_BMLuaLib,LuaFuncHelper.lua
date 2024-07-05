local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = false
L1_1 = nil
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.command_line
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = L2_2.command_line
    L3_3 = L3_3(L4_4)
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L3_3, "-ap \"msexchange", 1, true)
    if L4_4 then
      L4_4 = L3_3.match
      L4_4 = L4_4(L3_3, "-ap \"([^\"]+)\"")
      L1_1 = L4_4
      if L1_1 ~= nil then
        L0_0 = true
      end
    end
  end
end
L3_3 = nil
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L3_3 = L4_4.utf8p2
end
if L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.lower
  L4_4 = L4_4(L3_3)
  L4_4 = L4_4.match
  L4_4 = L4_4(L4_4, "lua:peoriginalname!(.*)$")
  L3_3 = L4_4
end
L4_4 = {}
if L3_3 and L0_0 then
  table.insert(L4_4, {applicationname = L1_1, modulename = L3_3})
elseif L3_3 and not L0_0 then
  table.insert(L4_4, {modulename = L3_3})
end
if #L4_4 > 0 then
  bm.add_related_string("InMemoryLoadBlocked", safeJsonSerialize(L4_4), bm.RelatedStringBMReport)
  bm.set_detection_string(safeJsonSerialize(L4_4))
end
return mp.INFECTED
