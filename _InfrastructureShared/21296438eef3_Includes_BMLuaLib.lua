local L0_0, L1_1
L0_0 = tostring(headerpage)
L1_1 = string.match(L0_0, "\\rundll32%.?e?x?e?(.*),%w+")
if L1_1 ~= nil then
  L1_1 = L1_1:lower()
  if contains(L1_1, {
    ".dll",
    ".ocx",
    ".cpl",
    ".xla",
    ".xlam",
    ".xll",
    ".vsto",
    ".olb",
    "--no-sandbox",
    "zebra_default.dat",
    "program files",
    "sogoutsf.ime",
    ".ax",
    ".wll",
    "setupinfobjectinstallaction",
    "openas_rundll"
  }) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
