local L0_0
L0_0 = bm
L0_0 = L0_0.get_connection_string
L0_0 = L0_0()
if L0_0 then
  if ({
    ["80"] = true,
    ["8080"] = true,
    ["443"] = true,
    ["53"] = true,
    ["21"] = true,
    ["25"] = true,
    ["22"] = true,
    ["389"] = true,
    ["9"] = true,
    ["636"] = true,
    ["1433"] = true,
    ["1434"] = true,
    ["1521"] = true,
    ["9389"] = true,
    ["8100"] = true,
    ["23"] = true,
    ["993"] = true,
    ["40000"] = true,
    ["9085"] = true,
    ["9092"] = true,
    ["3306"] = true,
    ["3300"] = true,
    ["5432"] = true
  })[string.match(L0_0, "DestPort=(%d+)")] then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN
