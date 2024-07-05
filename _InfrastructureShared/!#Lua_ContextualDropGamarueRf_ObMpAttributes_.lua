if peattributes.isexe and mp.getfilename():sub(-4) == ".exe" then
  for _FORV_7_ = 1, #{
    "tray",
    "xpers",
    "mgr",
    "agent",
    "ctrl",
    "sync",
    "use",
    "start",
    "win"
  } do
    if mp.getfilename():match("([^\\]+)%..+"):sub(1, #({
      "tray",
      "xpers",
      "mgr",
      "agent",
      "ctrl",
      "sync",
      "use",
      "start",
      "win"
    })[_FORV_7_]) == ({
      "tray",
      "xpers",
      "mgr",
      "agent",
      "ctrl",
      "sync",
      "use",
      "start",
      "win"
    })[_FORV_7_] or mp.getfilename():match("([^\\]+)%..+"):sub(1, -#({
      "tray",
      "xpers",
      "mgr",
      "agent",
      "ctrl",
      "sync",
      "use",
      "start",
      "win"
    })[_FORV_7_]) == ({
      "tray",
      "xpers",
      "mgr",
      "agent",
      "ctrl",
      "sync",
      "use",
      "start",
      "win"
    })[_FORV_7_] then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
