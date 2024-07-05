local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(.+\\)([^\\]+)$")
if L1_1(L0_0, "(.+\\)([^\\]+)$") == nil or L1_1 == nil then
  return mp.CLEAN
end
if L1_1:len() > 20 and string.sub(L1_1, -20) == "\\chrome\\application\\" then
  if ({
    ["winmm.dll"] = true,
    ["wtsapi32.dll"] = true,
    ["rpcrt4.dll"] = true,
    ["advapi32.dll"] = true,
    ["version.dll"] = true,
    ["userenv.dll"] = true,
    ["user32.dll"] = true,
    ["kernel32.dll"] = true,
    ["winhttp.dll"] = true
  })[L1_1(L0_0, "(.+\\)([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
