local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:match("(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if L0_0:match("(.+\\)([^\\]+)$"):len() == 36 and L0_0:match("(.+\\)([^\\]+)$"):match("(.+\\)(.+)\\$"):len() == 32 and L0_0:match("(.+\\)([^\\]+)$"):match("%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x.exe") and L0_0:match("(.+\\)([^\\]+)$"):match("(.+\\)(.+)\\$"):match("%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x") then
  mp.set_mpattribute("LUA:Wajam:Path")
end
return mp.CLEAN
