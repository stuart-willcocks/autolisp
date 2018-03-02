;; Moves all objects on the "AV-SLD-Cable" layer to the back
(defun c:preplot()

;; set ATTDISP to NORMAL
(setvar "ATTMODE" 1)

(setq sel_all (ssget "X"))
(command "draworder" sel_all "" "front")

(setq ss1 (ssget "X" '((8 . "AV-SLD-EquipmentOutline"))))
(command "draworder" ss1 "" "front")

(setq ss0 (ssget "X" '((8 . "AV-SLD-Cable,AV-SLD-CableExcludeFromExport"))))
(command "draworder" ss0 "" "back")


)