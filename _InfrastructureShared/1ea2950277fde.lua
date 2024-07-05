local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = tostring
  L1_1 = L1_1(mp.readfile(L0_0 - 9472, 8192))
  L1_1 = string.lower(L1_1)
  if string.find(L1_1, "https://icam%.cl/wp%-content/%.%.%./%.%.%./x3%.php") ~= nil or string.find(L1_1, "https://smartcheckautos%.com/wp%-content/%.%.%./%.%.%./x3%.php") ~= nil or string.find(L1_1, "url:https://calfeutragebprs%.com/wp%-content/image/s3%.php") ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
