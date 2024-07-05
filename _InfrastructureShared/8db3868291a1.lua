local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  local L2_7, L3_8, L4_9
  L2_7 = string
  L2_7 = L2_7.sub
  L3_8 = A0_5
  L4_9 = 1
  L2_7 = L2_7(L3_8, L4_9, string.len(A1_6))
  L2_7 = L2_7 == A1_6
  return L2_7
end
string_starts = L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.wp1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = L0_0
    L3_3 = "\\run\\\\(.+)$"
    L1_1 = L1_1(L2_2, L3_3)
    L0_0 = L1_1
    L1_1 = {
      L2_2,
      L3_3,
      L4_4,
      "desktop",
      "icon",
      "folder",
      "database",
      "connection",
      "crashreport",
      "time",
      "network"
    }
    L2_2 = "media"
    L3_3 = "video"
    L4_4 = "tray"
    L2_2 = {
      L3_3,
      L4_4,
      "notifyer",
      "saver",
      "verifyer",
      "informer"
    }
    L3_3 = "updater"
    L4_4 = "checker"
    L3_3 = #L1_1
    L4_4 = #L2_2
    for _FORV_8_ = 1, L3_3 do
      if string_starts(L0_0, L1_1[_FORV_8_]) then
        for _FORV_12_ = 1, L4_4 do
          if string_starts(string.sub(L0_0, string.len(L1_1[_FORV_8_]) + 1), L2_2[_FORV_12_]) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.ReportLowfi
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L2_2 = 3515746503
L0_0(L1_1, L2_2)
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
