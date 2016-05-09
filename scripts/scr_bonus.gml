return max( 0.01,0.45*((((15)/(5 + 2*global.hpdiff)))) 
+
((((13)/(8 + global.bhpdiff)))) * 0.10
+
(global.timediff) * 0.4
 + 
(1/(global.enemdiff / 2 + 0.5)) * 0.10
-0.05
)
;
