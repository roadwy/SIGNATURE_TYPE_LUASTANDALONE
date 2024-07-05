local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = false
L2_2 = nil
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3()
L4_4 = {
  L5_5,
  L6_6,
  ":\\Program Files",
  "\\search-structural\\pycode\\"
}
L5_5 = "\\jedi\\"
L6_6 = "CPython-"
L5_5 = contains
L6_6 = L3_3
L5_5 = L5_5(L6_6, L4_4)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.HEADERPAGE_SZ
if L5_5 < 256 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = tostring
L6_6 = headerpage
L5_5 = L5_5(L6_6)
L0_0 = L5_5
if L0_0 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {
  L6_6,
  "httplib",
  "requests.api",
  "aiohttp.client",
  "socket",
  "subprocess",
  "/bin/bash",
  "runpy"
}
L6_6 = "webbrowser"
L6_6 = {
  "os.system",
  "nt.system",
  "os.environ",
  "nt.environ",
  "posix.system"
}
if contains(L0_0, {
  "__builtin__",
  "builtins"
}) then
  if contains(L0_0, {
    "eval",
    "exec",
    "compile",
    "getattr",
    "apply",
    "breakpoint",
    "open"
  }) then
    L1_1 = true
    L2_2 = "evel_exec"
  end
elseif contains(L0_0, L6_6, false) then
  L1_1 = true
  L2_2 = "syetem_environ"
elseif contains(L0_0, L5_5) then
  L1_1 = true
  L2_2 = "SuspKeyword"
end
if L1_1 and L2_2 then
  if mp.get_mpattribute("Lua:PKL_Protocol_V2") then
    mp.set_mpattribute("Lua:PKL_Protocol_V2_suspicious_" .. L2_2)
  elseif mp.get_mpattribute("Lua:PKL_Protocol_V3") then
    mp.set_mpattribute("Lua:PKL_Protocol_V3_suspicious_" .. L2_2)
  elseif mp.get_mpattribute("Lua:PKL_Protocol_V4") then
    mp.set_mpattribute("Lua:PKL_Protocol_V4_suspicious_" .. L2_2)
  elseif mp.get_mpattribute("Lua:PKL_Protocol_V5") then
    mp.set_mpattribute("Lua:PKL_Protocol_V5_suspicious_" .. L2_2)
  end
end
return mp.CLEAN
