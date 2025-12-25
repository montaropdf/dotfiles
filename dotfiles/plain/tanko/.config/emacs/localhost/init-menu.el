(transient-define-prefix org-transient-custom-menu ()
  "Personal Menu toward Org Roam commands."
  ["Data logs"
   ["Notes taking"
    ("f" "Find node" org-roam-node-find)
    ("i" "Insert a node link" org-roam-node-insert)
    ("l" "Toggle Org Roam Buffer" org-roam-buffer-toggle)]
   ["Organizer"
    ("a" "Org Agenda" org-agenda)
    ("p" "Find projects" my/org-roam-find-project)
    ("r" "Refresh Agenda" my/org-roam-refresh-agenda-list)]
   ["Dailies"
    ("N" "Capture Now" org-roam-dailies-capture-today)
    ("D" "Capture for date" org-roam-dailies-capture-date)
    ("T" "Capture for tomorrow" org-roam-dailies-capture-tomorrow)
    ("Y" "Capture for yesterday" org-roam-dailies-capture-yesterday)
    ("d" "Journal at date" org-roam-dailies-goto-date)
    ("n" "Journal of today" org-roam-dailies-goto-today)
    ("t" "Journal of tomorrow" org-roam-dailies-goto-tomorrow)
    ("y" "Journal of yesterday" org-roam-dailies-goto-yesterday)]
   ["Tools"
    ("$" "Force Org Roam db sync" org-roam-db-sync)
    ("|" "Org Roam db cache cleaning" org-roam-db-clear-all)]
   ])

(global-set-key (kbd "<f7>") 'org-transient-custom-menu)
