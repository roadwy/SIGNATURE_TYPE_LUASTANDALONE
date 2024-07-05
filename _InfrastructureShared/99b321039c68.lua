local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = string
  L7_7 = L7_7.lower
  L8_8 = string
  L8_8 = L8_8.match
  L8_8 = L8_8(L6_6.image_path, "/([^/]+)$")
  L7_7 = L7_7(L8_8, L8_8(L6_6.image_path, "/([^/]+)$"))
  if L7_7 == "java" or L7_7 == "sshd" then
    L8_8 = string
    L8_8 = L8_8.lower
    L8_8 = L8_8(mp.GetProcessCommandLine(L6_6.ppid))
    if string.find(L8_8, "catalina.base=/usr/share/tomcat", 1, true) then
      return mp.INFECTED
    end
    if L8_8 == "sshd" then
      return mp.INFECTED
    end
  end
end
return L2_2
