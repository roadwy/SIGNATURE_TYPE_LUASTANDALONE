local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8, A1_9)
  local L2_10, L3_11, L4_12
  L2_10 = string
  L2_10 = L2_10.sub
  L3_11 = A0_8
  L4_12 = 1
  L2_10 = L2_10(L3_11, L4_12, string.len(A1_9))
  L2_10 = L2_10 == A1_9
  return L2_10
end
string_starts = L0_0
L0_0 = string
L0_0 = L0_0.lower
L1_1 = sigattr_head
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
L1_1 = string_starts
L2_2 = L0_0
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.ContextualExpandEnvironmentVariables
L5_5 = "%appdata%"
L7_7 = L4_4(L5_5)
L7_7 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5))
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5)))
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "intel",
  "amd",
  "dll",
  "tcp",
  "udp"
}
L2_2 = "win"
L3_3 = "cmd"
L4_4 = "disk"
L5_5 = "dsk"
L6_6 = "ms"
L7_7 = "hp"
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "host",
  "mgr",
  "update",
  "updater"
}
L3_3 = "process"
L4_4 = "proc"
L5_5 = "monitor"
L6_6 = "mon"
L7_7 = "sys"
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
L4_4 = "64.exe"
L5_5 = "32.exe"
L6_6 = ".exe"
L4_4 = #L1_1
L5_5 = #L2_2
L6_6 = #L3_3
L7_7 = string
L7_7 = L7_7.match
L7_7 = L7_7(L0_0, "([^\\]+)$")
for _FORV_11_ = 1, L4_4 do
  if string_starts(L7_7, L1_1[_FORV_11_]) then
    for _FORV_15_ = 1, L5_5 do
      if string_starts(string.sub(L7_7, string.len(L1_1[_FORV_11_]) + 1), L2_2[_FORV_15_]) then
        for _FORV_19_ = 1, L6_6 do
          if string.sub(L7_7, string.len(L1_1[_FORV_11_]) + string.len(L2_2[_FORV_15_]) + 1) == L3_3[_FORV_19_] then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
return _FOR_.CLEAN
