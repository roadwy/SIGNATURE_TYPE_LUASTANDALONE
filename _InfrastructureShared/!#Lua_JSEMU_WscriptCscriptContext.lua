local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILENAME
L0_0 = L0_0(L1_1)
L2_2 = L0_0
L1_1 = L0_0.sub
L1_1 = L1_1(L2_2, -3)
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
if L1_1 ~= ".js" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
L2_2 = L1_1.match
L2_2 = L2_2(L1_1, "[^\\]+$")
if L2_2 == nil or ({
  ["iexplore.exe"] = "",
  ["chrome.exe"] = "",
  ["firefox.exe"] = ""
})[L2_2] then
  return mp.CLEAN
end
if L2_2 == "wscript.exe" or L2_2 == "cscript.exe" then
  return mp.INFECTED
end
if not L0_0:find("^%l+%.js") then
  return mp.CLEAN
end
function string_starts(A0_3, A1_4)
  local L2_5, L3_6, L4_7
  L2_5 = string
  L2_5 = L2_5.sub
  L3_6 = A0_3
  L4_7 = 1
  L2_5 = L2_5(L3_6, L4_7, string.len(A1_4))
  L2_5 = L2_5 == A1_4
  return L2_5
end
function IsWscriptCopyMadeByBondat(A0_8)
  local L1_9, L2_10, L3_11, L4_12, L5_13, L6_14
  L1_9 = {
    L2_10,
    L3_11,
    L4_12,
    L5_13,
    L6_14,
    "hp",
    "intel",
    "amd",
    "dll",
    "tcp",
    "udp"
  }
  L2_10 = "win"
  L3_11 = "cmd"
  L4_12 = "disk"
  L5_13 = "dsk"
  L6_14 = "ms"
  L2_10 = {
    L3_11,
    L4_12,
    L5_13,
    L6_14,
    "sys",
    "host",
    "mgr",
    "update",
    "updater"
  }
  L3_11 = "process"
  L4_12 = "proc"
  L5_13 = "monitor"
  L6_14 = "mon"
  L3_11 = {
    L4_12,
    L5_13,
    L6_14
  }
  L4_12 = "64.exe"
  L5_13 = "32.exe"
  L6_14 = ".exe"
  L4_12 = #L1_9
  L5_13 = #L2_10
  L6_14 = #L3_11
  for _FORV_10_ = 1, L4_12 do
    if string_starts(A0_8, L1_9[_FORV_10_]) then
      for _FORV_14_ = 1, L5_13 do
        if string_starts(string.sub(A0_8, string.len(L1_9[_FORV_10_]) + 1), L2_10[_FORV_14_]) then
          for _FORV_18_ = 1, L6_14 do
            if string.sub(A0_8, string.len(L1_9[_FORV_10_]) + string.len(L2_10[_FORV_14_]) + 1) == L3_11[_FORV_18_] then
              return true
            end
          end
        end
      end
    end
  end
  return _FOR_
end
if IsWscriptCopyMadeByBondat(L2_2) == true then
  if L1_1:find("\\appdata\\roaming\\%l+\\%l+[63]?[42]?%.exe$") and (MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):lower():find("\\appdata\\roaming\\%l+$") or MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):lower():find("\\%.trashes\\%d+$")) then
    mp.set_mpattribute("Lua:BondatContextualWscriptRunWithPath_GenFirst")
    return mp.INFECTED
  end
  if not ({
    ["dllhost.exe"] = "",
    ["winprocess.exe"] = "",
    ["winupdate32.exe"] = "",
    ["winhost32.exe"] = "",
    ["msupdate.exe"] = "",
    ["winupdate.exe"] = "",
    ["mshost.exe"] = ""
  })[L2_2] then
    mp.set_mpattribute("Lua:BondatContextualWscriptRun")
    return mp.INFECTED
  end
end
return mp.CLEAN
