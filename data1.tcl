set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11            ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     120        ;# number of mobilenodes
set val(rp)     AODV     ;# routing protocol
set val(x)      2500            ;# X dimension of topography
set val(y)      2500           ;# Y dimension of topography
set val(stop)   120.0 ;# time of simulation end

#===================================
#               ??????                         
#===================================

#??trace file
set ns            [new Simulator]	;#??ns simulator
set tracefd       [open out.tr w]	;#??trace file
set namtrace       [open out.nam w]	;#????nam trace file
set out1 		[open neighbour w]

# *** Throughput Trace ***

set f0 [open PACKETDELIVERYRATIO.tr w]


# *** Packet Loss Trace ***

set f1 [open PACKETLOSS.tr w]



# *** Packet Delay Trace ***

set f2 [open ENDTOENDDELAY.tr w]


$ns trace-all $tracefd
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

set topo       [new Topography]	    ;#??topography object
$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

#??channel
set chan0 [new $val(chan)]
set sink [new Agent/LossMonitor]

#===================================
#        ??MobileNode???                      
#===================================

#??MobileNode???
$ns node-config -adhocRouting $val(rp) \
                -llType $val(ll) \
                -macType $val(mac) \
                -ifqType $val(ifq) \
                -ifqLen $val(ifqlen) \
                -antType $val(ant) \
                -propType $val(prop) \
                -phyType $val(netif) \
                -channel $chan0 \
                -topoInstance $topo \
                -agentTrace OFF \
                -routerTrace OFF \
                -macTrace ON \
                -movementTrace OFF



#===================================
#             ??Node              
#===================================

#???0?Node
set node_(0) [$ns node]
set node_(1) [$ns node]
set node_(2) [$ns node]
set node_(3) [$ns node]
set node_(4) [$ns node]
set node_(5) [$ns node]
set node_(6) [$ns node]
set node_(7) [$ns node]
set node_(8) [$ns node]
set node_(9) [$ns node]
set node_(10) [$ns node]
set node_(11) [$ns node]
set node_(12) [$ns node]
set node_(13) [$ns node]
set node_(14) [$ns node]
set node_(15) [$ns node]
set node_(16) [$ns node]
set node_(17) [$ns node]
set node_(18) [$ns node]
set node_(19) [$ns node]
set node_(20) [$ns node]
set node_(21) [$ns node]
set node_(22) [$ns node]
set node_(23) [$ns node]
set node_(24) [$ns node]
set node_(25) [$ns node]
set node_(26) [$ns node]
set node_(27) [$ns node]
set node_(28) [$ns node]
set node_(29) [$ns node]
set node_(30) [$ns node]
set node_(31) [$ns node]
set node_(32) [$ns node]
set node_(33) [$ns node]
set node_(34) [$ns node]
set node_(35) [$ns node]
set node_(36) [$ns node]
set node_(37) [$ns node]
set node_(38) [$ns node]
set node_(39) [$ns node]
set node_(40) [$ns node]
set node_(41) [$ns node]
set node_(42) [$ns node]
set node_(43) [$ns node]
set node_(44) [$ns node]
set node_(45) [$ns node]
set node_(46) [$ns node]
set node_(47) [$ns node]
set node_(48) [$ns node]
set node_(49) [$ns node]
set node_(50) [$ns node]
set node_(51) [$ns node]
set node_(52) [$ns node]
set node_(53) [$ns node]
set node_(54) [$ns node]
set node_(55) [$ns node]
set node_(56) [$ns node]
set node_(57) [$ns node]
set node_(58) [$ns node]
set node_(59) [$ns node]
set node_(60) [$ns node]
set node_(61) [$ns node]
set node_(62) [$ns node]
set node_(63) [$ns node]
set node_(64) [$ns node]
set node_(65) [$ns node]
set node_(66) [$ns node]
set node_(67) [$ns node]
set node_(68) [$ns node]
set node_(69) [$ns node]
set node_(70) [$ns node]
set node_(71) [$ns node]
set node_(72) [$ns node]
set node_(73) [$ns node]
set node_(74) [$ns node]
set node_(75) [$ns node]
set node_(76) [$ns node]
set node_(77) [$ns node]
set node_(78) [$ns node]
set node_(79) [$ns node]
set node_(80) [$ns node]
set node_(81) [$ns node]
set node_(82) [$ns node]
set node_(83) [$ns node]
set node_(84) [$ns node]
set node_(85) [$ns node]
set node_(86) [$ns node]
set node_(87) [$ns node]
set node_(88) [$ns node]
set node_(89) [$ns node]
set node_(90) [$ns node]
set node_(91) [$ns node]
set node_(92) [$ns node]
set node_(93) [$ns node]
set node_(94) [$ns node]
set node_(95) [$ns node]
set node_(96) [$ns node]
set node_(97) [$ns node]
set node_(98) [$ns node]
set node_(99) [$ns node]
set node_(100) [$ns node]
set node_(101) [$ns node]
set node_(102) [$ns node]
set node_(103) [$ns node]
set node_(104) [$ns node]
set node_(105) [$ns node]
set node_(106) [$ns node]
set node_(107) [$ns node]
set node_(108) [$ns node]
set node_(109) [$ns node]
set node_(110) [$ns node]
set node_(111) [$ns node]
set node_(112) [$ns node]
set node_(113) [$ns node]
set node_(114) [$ns node]
set node_(115) [$ns node]
set node_(116) [$ns node]
set node_(117) [$ns node]
set node_(118) [$ns node]
set node_(119) [$ns node]


for {set i 0} {$i < $val(nn) } {incr i} {
	
	$node_($i) set X_ 0.00
        $node_($i) set Y_ 0.00
        $node_($i) set Z_ 0.00
	$ns initial_node_pos $node_($i) 60
	
}

set X1(0) 352
set Y1(0) 704

set X1(1) 604
set Y1(1) 706

set X1(2) 464
set Y1(2) 864

set X1(3) 520
set Y1(3) 992
set X1(4) 648
set Y1(4) 962

set X1(5) 836
set Y1(5) 956

set X1(6) 802
set Y1(6) 854

set X1(7) 934
set Y1(7) 732

set X1(8) 1084
set Y1(8) 894

set X1(9) 990
set Y1(9) 1044

set X1(10) 1164
set Y1(10) 1004

set X1(11) 1312
set Y1(11) 866

set X1(12) 1262
set Y1(12) 748

set X1(13) 1320
set Y1(13) 636

set X1(14) 1354
set Y1(14) 482

set X1(15) 1306
set Y1(15) 360

set X1(16) 1192
set Y1(16) 510

set X1(17) 1056
set Y1(17) 676

set X1(18) 978
set Y1(18) 500

set X1(19) 802
set Y1(19) 594

set X1(20) 612
set Y1(20) 534

set X1(21) 380
set Y1(21) 590

set X1(22) 346
set Y1(22) 408

set X1(23) 466
set Y1(23) 216

set X1(24) 516
set Y1(24) 360

set X1(25) 784
set Y1(25) 296

set X1(26) 770
set Y1(26) 386

set X1(27) 618
set Y1(27) 368

set X1(28) 656
set Y1(28) 166


set X1(29) 890
set Y1(29) 150

set X1(30) 1044
set Y1(30) 290

set X1(31) 1182
set Y1(31) 348

set X1(32) 1262
set Y1(32) 180

set X1(33) 1134
set Y1(33) 100

set X1(34) 1477
set Y1(34) 332

set X1(35) 1550
set Y1(35) 600

set X1(36) 1565
set Y1(36) 750

set X1(37) 1442
set Y1(37) 897

set X1(38) 1355
set Y1(38) 1100

set X1(39) 1595
set Y1(39) 1050


set X1(40) 1700
set Y1(40) 870

set X1(41) 1740
set Y1(41) 637

set X1(42) 1750
set Y1(42) 485


set X1(43) 1752
set Y1(43) 342

set X1(44) 1620
set Y1(44) 345

set X1(45) 1685
set Y1(45) 182

set X1(46) 1490
set Y1(46) 132

set X1(47) 1627
set Y1(47) 1322

set X1(48) 1497
set Y1(48) 1277

set X1(49) 1220
set Y1(49) 1325

set X1(50) 1005
set Y1(50) 1275

set X1(51) 1172
set Y1(51) 1175

set X1(52) 855
set Y1(52) 1330

set X1(53) 685
set Y1(53) 1325

set X1(54) 750
set Y1(54) 1192

set X1(55) 867
set Y1(55) 1100

set X1(56) 610
set Y1(56) 1155

set X1(57) 437
set Y1(57) 1290

set X1(58) 360
set Y1(58) 1215

set X1(59) 282
set Y1(59) 1055

set X1(60) 240
set Y1(60) 907

set X1(61) 175
set Y1(61) 712

set X1(62) 212
set Y1(62) 482

set X1(63) 137
set Y1(63) 1147

set X1(64) 222
set Y1(64) 1350

set X1(65) 322
set Y1(65) 1472

set X1(66) 495
set Y1(66) 1537

set X1(67) 672
set Y1(67) 1595

set X1(68) 750
set Y1(68) 1520

set X1(69) 882
set Y1(69) 1632

set X1(70) 1012
set Y1(70) 1537

set X1(71) 1030
set Y1(71) 1432

set X1(72) 1192
set Y1(72) 1545

set X1(73) 1162
set Y1(73) 1737

set X1(74) 1360
set Y1(74) 1627

set X1(75) 1020
set Y1(75) 1737


set X1(76) 1402
set Y1(76) 1445

set X1(77) 1522
set Y1(77) 1635

set X1(78) 1670
set Y1(78) 1545

set X1(79) 1745
set Y1(79) 1405

set X1(80) 1760
set Y1(80) 1242

set X1(81) 1762
set Y1(81) 1090

set X1(82) 1897
set Y1(82) 1344

set X1(83) 1991
set Y1(83) 1264

set X1(84) 1991
set Y1(84) 1097

set X1(85) 1955
set Y1(85) 979

set X1(86) 1882
set Y1(86) 797
set X1(87) 1976
set Y1(87) 573

set X1(88) 1999
set Y1(88) 1544
set X1(89) 1752
set Y1(89) 1755

set X1(90) 1894
set Y1(90) 1735

set X1(91) 1497
set Y1(91) 1882

set X1(92) 1235
set Y1(92) 1938

set X1(93) 944
set Y1(93) 1991

set X1(94) 782
set Y1(94) 1888

set X1(95) 682
set Y1(95) 1808

set X1(96) 1123
set Y1(96) 1988

set X1(97) 985
set Y1(97) 1852

set X1(98) 688
set Y1(98) 1985
set X1(99) 514
set Y1(99) 1970
set X1(100) 358
set Y1(100) 1850
set X1(101) 285
set Y1(101) 1705
set X1(102) 441
set Y1(102) 1705
set X1(103) 544
set Y1(103) 1800
set X1(104) 135
set Y1(104) 1670
set X1(105) 73
set Y1(105) 1564
set X1(106) 55
set Y1(106) 1382
set X1(107) 202
set Y1(107) 1532
set X1(108) 129
set Y1(108) 1897
set X1(109) 41
set Y1(109) 1111
set X1(110) 55
set Y1(110) 923
set X1(111) 35
set Y1(111) 717
set X1(112) 58
set Y1(112) 602
set X1(113) 1614
set Y1(113) 1864
set X1(114) 1317
set Y1(114) 1900
set X1(115) 1826
set Y1(115) 1911
set X1(116) 1999
set Y1(116) 1838
set X1(117) 1532
set Y1(117) 1997
set X1(118) 1870
set Y1(118) 1579
set X1(119) 1994
set Y1(119) 847
#===================================
#             ??Movement           
#===================================


for {set i 1} {$i < $val(nn) } {incr i} {
	
	$ns at 0.0 "$node_($i) setdest $X1($i) $Y1($i) 2000.0"
	
	
}

set m 0
puts "Routing table"
puts "-----------------------------------------"
puts "|Node              |    one hop neighbour|"
puts "-----------------------------------------"
for {set i 0} {$i < $val(nn) } {incr i} {

set k 0
set p 0
#puts "---------------------------------------"
#puts "node_($i)"
#puts "---------------------------------------"
for {set j 0} {$j < $val(nn) } {incr j} {



set a [ expr $X1($j)-$X1($i)]
set b [ expr $a*$a]
set c [ expr $Y1($j)-$Y1($i)]
set d [ expr $c*$c]
set e [ expr $b+$d]
set f 0.5
set g [expr pow($e,$f)]

if {$g <= 250 && $i != $j} {

set k [ expr $k+1]
set nei($m) $j
set m [ expr $m+1]

puts "|       Node($i)    |          ($j)        |"                                  
} 
}
set count($i) $k
puts "|----------------------------------------|"
}


for {set i 0} {$i < $count(0) } {incr i} {
set neighbour1($i) $nei($i)	
set dd "set neighbournode(0) $neighbour1($i)"
puts $out1 $dd
}

set b1 0
set a1 [ expr $count(0)+$count(1)]
for {set i $count(0)} {$i < $a1 } {incr i} {
set neighbour2($b1) $nei($i)
set dd "set neighbournode(1) $neighbour2($b1)"
puts $out1 $dd
set b1 [ expr $b1+1]

}

set b2 0
set a2 [ expr $a1+$count(2)]
for {set i $a1} {$i < $a2 } {incr i} {
set neighbour3($b2) $nei($i)
set dd "set neighbournode(2) $neighbour3($b2)"
puts $out1 $dd
set b2 [ expr $b2+1]

}

set b3 0
set a3 [ expr $a2+$count(3)]
for {set i $a2} {$i < $a3 } {incr i} {
set neighbour4($b3) $nei($i)
set dd "set neighbournode(3) $neighbour4($b3)"
puts $out1 $dd	
set b3 [ expr $b3+1]
}

set b4 0
set a4 [ expr $a3+$count(4)]
for {set i $a3} {$i < $a4 } {incr i} {
set neighbour5($b4) $nei($i)
set dd "set neighbournode(4) $neighbour5($b4)"
puts $out1 $dd	
set b4 [ expr $b4+1]
}

set b5 0
set a5 [ expr $a4+$count(5)]
for {set i $a4} {$i < $a5 } {incr i} {
set neighbour6($b5) $nei($i)
set dd "set neighbournode(5) $neighbour6($b5)"
puts $out1 $dd	
set b5 [ expr $b5+1]
}


set b6 0
set a6 [ expr $a5+$count(6)]
for {set i $a5} {$i < $a6 } {incr i} {
set neighbour7($b6) $nei($i)
set dd "set neighbournode(6) $neighbour7($b6)"
puts $out1 $dd
set b6 [ expr $b6+1]
}



set b7 0
set a7 [ expr $a6+$count(7)]
for {set i $a6} {$i < $a7 } {incr i} {
set neighbour8($b7) $nei($i)
set dd "set neighbournode(7) $neighbour8($b7)"
puts $out1 $dd
set b7 [ expr $b7+1]
}


set b8 0
set a8 [ expr $a7+$count(8)]
for {set i $a7} {$i < $a8 } {incr i} {
set neighbour9($b8) $nei($i)
set dd "set neighbournode(8) $neighbour9($b8)"
puts $out1 $dd
set b8 [ expr $b8+1]
}

set b9 0
set a9 [ expr $a8+$count(9)]
for {set i $a8} {$i < $a9 } {incr i} {
set neighbour10($b9) $nei($i)
set dd "set neighbournode(9) $neighbour10($b9)"
puts $out1 $dd
set b9 [ expr $b9+1]
}

set b10 0
set a10 [ expr $a9+$count(10)]
for {set i $a9} {$i < $a10 } {incr i} {
set neighbour11($b10) $nei($i)
set dd "set neighbournode(10) $neighbour11($b10)"
puts $out1 $dd	
set b10 [ expr $b10+1]
}


set b11 0
set a11 [ expr $a10+$count(11)]
for {set i $a10} {$i < $a11 } {incr i} {
set neighbour12($b11) $nei($i)
set dd "set neighbournode(11) $neighbour12($b11)"
puts $out1 $dd	
set b11 [ expr $b11+1]
}

set b12 0
set a12 [ expr $a11+$count(12)]
for {set i $a11} {$i < $a12 } {incr i} {
set neighbour13($b12) $nei($i)
set dd "set neighbournode(12) $neighbour13($b12)"
puts $out1 $dd	
set b12 [ expr $b12+1]
}

set b13 0
set a13 [ expr $a12+$count(13)]
for {set i $a12} {$i < $a13 } {incr i} {
set neighbour14($b13) $nei($i)
set dd "set neighbournode(13) $neighbour14($b13)"
puts $out1 $dd	
set b13 [ expr $b13+1]
}

set b14 0
set a14 [ expr $a13+$count(14)]
for {set i $a13} {$i < $a14 } {incr i} {
set neighbour15($b14) $nei($i)
set dd "set neighbournode(14) $neighbour15($b14)"
puts $out1 $dd	
set b14 [ expr $b14+1]
}

set b15 0
set a15 [ expr $a14+$count(15)]
for {set i $a14} {$i < $a15 } {incr i} {
set neighbour16($b15) $nei($i)
set dd "set neighbournode(15) $neighbour16($b15)"
puts $out1 $dd	
set b15 [ expr $b15+1]
}

set b16 0
set a16 [ expr $a15+$count(16)]
for {set i $a15} {$i < $a16 } {incr i} {
set neighbour17($b16) $nei($i)
set dd "set neighbournode(16) $neighbour17($b16)"
puts $out1 $dd	
set b16 [ expr $b16+1]
}

set b17 0
set a17 [ expr $a16+$count(17)]
for {set i $a16} {$i < $a17 } {incr i} {
set neighbour18($b17) $nei($i)
set dd "set neighbournode(17) $neighbour18($b17)"
puts $out1 $dd	
set b17 [ expr $b17+1]
}

set b18 0
set a18 [ expr $a17+$count(18)]
for {set i $a17} {$i < $a18 } {incr i} {
set neighbour19($b18) $nei($i)
set dd "set neighbournode(18) $neighbour19($b18)"
puts $out1 $dd	
set b18 [ expr $b18+1]
}

set b19 0
set a19 [ expr $a18+$count(19)]
for {set i $a18} {$i < $a19 } {incr i} {
set neighbour20($b19) $nei($i)
set dd "set neighbournode(19) $neighbour20($b19)"
puts $out1 $dd	
set b19 [ expr $b19+1]
}

set b20 0
set a20 [ expr $a19+$count(20)]
for {set i $a19} {$i < $a20 } {incr i} {
set neighbour21($b20) $nei($i)
set dd "set neighbournode(20) $neighbour21($b20)"
puts $out1 $dd	
set b20 [ expr $b20+1]
}

set b21 0
set a21 [ expr $a20+$count(21)]
for {set i $a20} {$i < $a21 } {incr i} {
set neighbour22($b21) $nei($i)
set dd "set neighbournode(21) $neighbour22($b21)"
puts $out1 $dd	
set b21 [ expr $b21+1]
}

set b22 0
set a22 [ expr $a21+$count(22)]
for {set i $a21} {$i < $a22 } {incr i} {
set neighbour23($b22) $nei($i)
set dd "set neighbournode(22) $neighbour23($b22)"
puts $out1 $dd	
set b22 [ expr $b22+1]
}

set b23 0
set a23 [ expr $a22+$count(23)]
for {set i $a22} {$i < $a23 } {incr i} {
set neighbour24($b23) $nei($i)
set dd "set neighbournode(23) $neighbour24($b23)"
puts $out1 $dd	
set b23 [ expr $b23+1]
}

set b24 0
set a24 [ expr $a23+$count(24)]
for {set i $a23} {$i < $a24 } {incr i} {
set neighbour25($b24) $nei($i)
set dd "set neighbournode(24) $neighbour25($b24)"
puts $out1 $dd	
set b24 [ expr $b24+1]
}

set b25 0
set a25 [ expr $a24+$count(25)]
for {set i $a24} {$i < $a25 } {incr i} {
set neighbour26($b25) $nei($i)
set dd "set neighbournode(25) $neighbour26($b25)"
puts $out1 $dd	
set b25 [ expr $b25+1]
}

set b26 0
set a26 [ expr $a25+$count(26)]
for {set i $a25} {$i < $a26 } {incr i} {
set neighbour27($b26) $nei($i)
set dd "set neighbournode(26) $neighbour27($b26)"
puts $out1 $dd	
set b26 [ expr $b26+1]
}

set b27 0
set a27 [ expr $a26+$count(27)]
for {set i $a26} {$i < $a27 } {incr i} {
set neighbour28($b27) $nei($i)
set dd "set neighbournode(27) $neighbour28($b27)"
puts $out1 $dd	
set b27 [ expr $b27+1]
}

set b28 0
set a28 [ expr $a27+$count(28)]
for {set i $a27} {$i < $a28 } {incr i} {
set neighbour29($b28) $nei($i)
set dd "set neighbournode(28) $neighbour29($b28)"
puts $out1 $dd	
set b28 [ expr $b28+1]
}


set b29 0
set a29 [ expr $a28+$count(29)]
for {set i $a28} {$i < $a29 } {incr i} {
set neighbour30($b29) $nei($i)
set dd "set neighbournode(29) $neighbour30($b29)"
puts $out1 $dd	
set b29 [ expr $b29+1]
}

set b30 0
set a30 [ expr $a29+$count(30)]
for {set i $a29} {$i < $a30 } {incr i} {
set neighbour31($b30) $nei($i)
set dd "set neighbournode(30) $neighbour31($b30)"
puts $out1 $dd	
set b30 [ expr $b30+1]
}

set b31 0
set a31 [ expr $a30+$count(31)]
for {set i $a30} {$i < $a31 } {incr i} {
set neighbour32($b31) $nei($i)
set dd "set neighbournode(31) $neighbour32($b31)"
puts $out1 $dd	
set b31 [ expr $b31+1]
}


set b32 0
set a32 [ expr $a31+$count(32)]
for {set i $a31} {$i < $a32 } {incr i} {
set neighbour33($b32) $nei($i)
set dd "set neighbournode(32) $neighbour33($b32)"
puts $out1 $dd	
set b32 [ expr $b32+1]
}

set b33 0
set a33 [ expr $a32+$count(33)]
for {set i $a32} {$i < $a33 } {incr i} {
set neighbour34($b33) $nei($i)
set dd "set neighbournode(33) $neighbour34($b33)"
puts $out1 $dd	
set b33 [ expr $b33+1]
}


set b34 0
set a34 [ expr $a33+$count(34)]
for {set i $a33} {$i < $a34 } {incr i} {
set neighbour35($b34) $nei($i)
set dd "set neighbournode(34) $neighbour35($b34)"
puts $out1 $dd	
set b34 [ expr $b34+1]
}

set b35 0
set a35 [ expr $a34+$count(35)]
for {set i $a34} {$i < $a35 } {incr i} {
set neighbour36($b35) $nei($i)
set dd "set neighbournode(35) $neighbour36($b35)"
puts $out1 $dd	
set b35 [ expr $b35+1]
}

set b36 0
set a36 [ expr $a35+$count(36)]
for {set i $a35} {$i < $a36 } {incr i} {
set neighbour37($b36) $nei($i)
set dd "set neighbournode(36) $neighbour37($b36)"
puts $out1 $dd	
set b36 [ expr $b36+1]
}

set b37 0
set a37 [ expr $a36+$count(37)]
for {set i $a36} {$i < $a37 } {incr i} {
set neighbour38($b37) $nei($i)
set dd "set neighbournode(37) $neighbour38($b37)"
puts $out1 $dd	
set b37 [ expr $b37+1]
}


set b38 0
set a38 [ expr $a37+$count(38)]
for {set i $a37} {$i < $a38 } {incr i} {
set neighbour39($b38) $nei($i)
set dd "set neighbournode(38) $neighbour39($b38)"
puts $out1 $dd	
set b38 [ expr $b38+1]
}

set b39 0
set a39 [ expr $a38+$count(39)]
for {set i $a38} {$i < $a39 } {incr i} {
set neighbour40($b39) $nei($i)
set dd "set neighbournode(39) $neighbour40($b39)"
puts $out1 $dd	
set b39 [ expr $b39+1]
}


set b40 0
set a40 [ expr $a39+$count(40)]
for {set i $a39} {$i < $a40 } {incr i} {
set neighbour41($b40) $nei($i)
set dd "set neighbournode(40) $neighbour41($b40)"
puts $out1 $dd	
set b40 [ expr $b40+1]
}

set b41 0
set a41 [ expr $a40+$count(41)]
for {set i $a40} {$i < $a41 } {incr i} {
set neighbour42($b41) $nei($i)
set dd "set neighbournode(41) $neighbour42($b41)"
puts $out1 $dd	
set b41 [ expr $b41+1]
}


set b42 0
set a42 [ expr $a41+$count(42)]
for {set i $a41} {$i < $a42 } {incr i} {
set neighbour43($b42) $nei($i)
set dd "set neighbournode(42) $neighbour43($b42)"
puts $out1 $dd
set b42 [ expr $b42+1]

}

set b43 0
set a43 [ expr $a42+$count(43)]
for {set i $a42} {$i < $a43 } {incr i} {
set neighbour44($b43) $nei($i)
set dd "set neighbournode(43) $neighbour44($b43)"
puts $out1 $dd	
set b43 [ expr $b43+1]
}

set b44 0
set a44 [ expr $a43+$count(44)]
for {set i $a43} {$i < $a44 } {incr i} {
set neighbour45($b44) $nei($i)
set dd "set neighbournode(44) $neighbour45($b44)"
puts $out1 $dd	
set b44 [ expr $b44+1]
}

set b45 0
set a45 [ expr $a44+$count(45)]
for {set i $a44} {$i < $a45 } {incr i} {
set neighbour46($b45) $nei($i)
set dd "set neighbournode(45) $neighbour46($b45)"
puts $out1 $dd	
set b45 [ expr $b45+1]
}


set b46 0
set a46 [ expr $a45+$count(46)]
for {set i $a45} {$i < $a46 } {incr i} {
set neighbour47($b46) $nei($i)
set dd "set neighbournode(46) $neighbour47($b46)"
puts $out1 $dd
set b46 [ expr $b46+1]
}



set b47 0
set a47 [ expr $a46+$count(47)]
for {set i $a46} {$i < $a47 } {incr i} {
set neighbour48($b47) $nei($i)
set dd "set neighbournode(47) $neighbour48($b47)"
puts $out1 $dd
set b47 [ expr $b47+1]
}


set b48 0
set a48 [ expr $a47+$count(48)]
for {set i $a47} {$i < $a48 } {incr i} {
set neighbour49($b48) $nei($i)
set dd "set neighbournode(48) $neighbour49($b48)"
puts $out1 $dd
set b48 [ expr $b48+1]
}

set b49 0
set a49 [ expr $a48+$count(49)]
for {set i $a48} {$i < $a49 } {incr i} {
set neighbour50($b49) $nei($i)
set dd "set neighbournode(49) $neighbour50($b49)"
puts $out1 $dd
set b49 [ expr $b49+1]
}

set b50 0
set a50 [ expr $a49+$count(50)]
for {set i $a49} {$i < $a50 } {incr i} {
set neighbour51($b50) $nei($i)
set dd "set neighbournode(50) $neighbour51($b50)"
puts $out1 $dd	
set b50 [ expr $b50+1]
}



set b51 0
set a51 [ expr $a50+$count(51)]
for {set i $a50} {$i < $a51 } {incr i} {
set neighbour52($b51) $nei($i)
set dd "set neighbournode(51) $neighbour52($b51)"
puts $out1 $dd
set b51 [ expr $b51+1]

}

set b52 0
set a52 [ expr $a51+$count(52)]
for {set i $a51} {$i < $a52 } {incr i} {
set neighbour53($b52) $nei($i)
set dd "set neighbournode(52) $neighbour53($b52)"
puts $out1 $dd
set b52 [ expr $b52+1]

}

set b53 0
set a53 [ expr $a52+$count(53)]
for {set i $a52} {$i < $a53 } {incr i} {
set neighbour54($b53) $nei($i)
set dd "set neighbournode(53) $neighbour54($b53)"
puts $out1 $dd	
set b53 [ expr $b53+1]
}

set b54 0
set a54 [ expr $a53+$count(54)]
for {set i $a53} {$i < $a54 } {incr i} {
set neighbour55($b54) $nei($i)
set dd "set neighbournode(54) $neighbour55($b54)"
puts $out1 $dd	
set b54 [ expr $b54+1]
}

set b55 0
set a55 [ expr $a54+$count(55)]
for {set i $a54} {$i < $a55 } {incr i} {
set neighbour56($b55) $nei($i)
set dd "set neighbournode(55) $neighbour56($b55)"
puts $out1 $dd	
set b55 [ expr $b55+1]
}


set b56 0
set a56 [ expr $a55+$count(56)]
for {set i $a55} {$i < $a56 } {incr i} {
set neighbour57($b56) $nei($i)
set dd "set neighbournode(56) $neighbour57($b56)"
puts $out1 $dd
set b56 [ expr $b56+1]
}



set b57 0
set a57 [ expr $a56+$count(57)]
for {set i $a56} {$i < $a57 } {incr i} {
set neighbour58($b57) $nei($i)
set dd "set neighbournode(57) $neighbour58($b57)"
puts $out1 $dd
set b57 [ expr $b57+1]
}


set b58 0
set a58 [ expr $a57+$count(58)]
for {set i $a57} {$i < $a58 } {incr i} {
set neighbour59($b58) $nei($i)
set dd "set neighbournode(58) $neighbour59($b58)"
puts $out1 $dd
set b58 [ expr $b58+1]
}

set b59 0
set a59 [ expr $a58+$count(59)]
for {set i $a58} {$i < $a59 } {incr i} {
set neighbour60($b59) $nei($i)
set dd "set neighbournode(59) $neighbour60($b59)"
puts $out1 $dd
set b59 [ expr $b59+1]
}

set b60 0
set a60 [ expr $a59+$count(60)]
for {set i $a59} {$i < $a60 } {incr i} {
set neighbour61($b60) $nei($i)
set dd "set neighbournode(60) $neighbour61($b60)"
puts $out1 $dd	
set b60 [ expr $b60+1]
}

set b61 0
set a61 [ expr $a60+$count(61)]
for {set i $a60} {$i < $a61 } {incr i} {
set neighbour62($b61) $nei($i)
set dd "set neighbournode(61) $neighbour62($b61)"
puts $out1 $dd
set b61 [ expr $b61+1]

}

set b62 0
set a62 [ expr $a61+$count(62)]
for {set i $a61} {$i < $a62 } {incr i} {
set neighbour63($b62) $nei($i)
set dd "set neighbournode(62) $neighbour63($b62)"
puts $out1 $dd
set b62 [ expr $b62+1]

}

set b63 0
set a63 [ expr $a62+$count(63)]
for {set i $a62} {$i < $a63 } {incr i} {
set neighbour64($b63) $nei($i)
set dd "set neighbournode(63) $neighbour64($b63)"
puts $out1 $dd	
set b63 [ expr $b63+1]
}

set b64 0
set a64 [ expr $a63+$count(64)]
for {set i $a63} {$i < $a64 } {incr i} {
set neighbour65($b64) $nei($i)
set dd "set neighbournode(64) $neighbour65($b64)"
puts $out1 $dd	
set b64 [ expr $b64+1]
}

set b65 0
set a65 [ expr $a64+$count(65)]
for {set i $a64} {$i < $a65 } {incr i} {
set neighbour66($b65) $nei($i)
set dd "set neighbournode(65) $neighbour66($b65)"
puts $out1 $dd	
set b65 [ expr $b65+1]
}


set b66 0
set a66 [ expr $a65+$count(66)]
for {set i $a65} {$i < $a66 } {incr i} {
set neighbour67($b66) $nei($i)
set dd "set neighbournode(66) $neighbour67($b66)"
puts $out1 $dd
set b66 [ expr $b66+1]
}



set b67 0
set a67 [ expr $a66+$count(67)]
for {set i $a66} {$i < $a67 } {incr i} {
set neighbour68($b67) $nei($i)
set dd "set neighbournode(67) $neighbour68($b67)"
puts $out1 $dd
set b67 [ expr $b67+1]
}


set b68 0
set a68 [ expr $a67+$count(68)]
for {set i $a67} {$i < $a68 } {incr i} {
set neighbour69($b68) $nei($i)
set dd "set neighbournode(68) $neighbour69($b68)"
puts $out1 $dd
set b68 [ expr $b68+1]
}

set b69 0
set a69 [ expr $a68+$count(69)]
for {set i $a68} {$i < $a69 } {incr i} {
set neighbour70($b69) $nei($i)
set dd "set neighbournode(69) $neighbour70($b69)"
puts $out1 $dd
set b69 [ expr $b69+1]
}

set b70 0
set a70 [ expr $a69+$count(70)]
for {set i $a69} {$i < $a70 } {incr i} {
set neighbour71($b70) $nei($i)
set dd "set neighbournode(70) $neighbour71($b70)"
puts $out1 $dd	
set b70 [ expr $b70+1]
}

set b71 0
set a71 [ expr $a70+$count(71)]
for {set i $a70} {$i < $a71 } {incr i} {
set neighbour72($b71) $nei($i)
set dd "set neighbournode(71) $neighbour72($b71)"
puts $out1 $dd
set b71 [ expr $b71+1]

}

set b72 0
set a72 [ expr $a71+$count(72)]
for {set i $a71} {$i < $a72 } {incr i} {
set neighbour73($b72) $nei($i)
set dd "set neighbournode(72) $neighbour73($b72)"
puts $out1 $dd
set b72 [ expr $b72+1]

}

set b73 0
set a73 [ expr $a72+$count(73)]
for {set i $a72} {$i < $a73 } {incr i} {
set neighbour74($b73) $nei($i)
set dd "set neighbournode(73) $neighbour74($b73)"
puts $out1 $dd	
set b73 [ expr $b73+1]
}

set b74 0
set a74 [ expr $a73+$count(74)]
for {set i $a73} {$i < $a74 } {incr i} {
set neighbour75($b74) $nei($i)
set dd "set neighbournode(74) $neighbour75($b74)"
puts $out1 $dd	
set b74 [ expr $b74+1]
}

set b75 0
set a75 [ expr $a74+$count(75)]
for {set i $a74} {$i < $a75 } {incr i} {
set neighbour76($b75) $nei($i)
set dd "set neighbournode(75) $neighbour76($b75)"
puts $out1 $dd	
set b75 [ expr $b75+1]
}


set b76 0
set a76 [ expr $a75+$count(76)]
for {set i $a75} {$i < $a76 } {incr i} {
set neighbour77($b76) $nei($i)
set dd "set neighbournode(76) $neighbour77($b76)"
puts $out1 $dd
set b76 [ expr $b76+1]
}



set b77 0
set a77 [ expr $a76+$count(77)]
for {set i $a76} {$i < $a77 } {incr i} {
set neighbour78($b77) $nei($i)
set dd "set neighbournode(77) $neighbour78($b77)"
puts $out1 $dd
set b77 [ expr $b77+1]
}


set b78 0
set a78 [ expr $a77+$count(78)]
for {set i $a77} {$i < $a78 } {incr i} {
set neighbour79($b78) $nei($i)
set dd "set neighbournode(78) $neighbour79($b78)"
puts $out1 $dd
set b78 [ expr $b78+1]
}

set b79 0
set a79 [ expr $a78+$count(79)]
for {set i $a78} {$i < $a79 } {incr i} {
set neighbour80($b79) $nei($i)
set dd "set neighbournode(79) $neighbour80($b79)"
puts $out1 $dd
set b79 [ expr $b79+1]
}

set b80 0
set a80 [ expr $a79+$count(80)]
for {set i $a79} {$i < $a80 } {incr i} {
set neighbour81($b80) $nei($i)
set dd "set neighbournode(80) $neighbour81($b80)"
puts $out1 $dd	
set b80 [ expr $b80+1]
}

set b81 0
set a81 [ expr $a80+$count(81)]
for {set i $a80} {$i < $a81 } {incr i} {
set neighbour82($b81) $nei($i)
set dd "set neighbournode(81) $neighbour82($b81)"
puts $out1 $dd
set b81 [ expr $b81+1]

}

set b82 0
set a82 [ expr $a81+$count(82)]
for {set i $a81} {$i < $a82 } {incr i} {
set neighbour83($b82) $nei($i)
set dd "set neighbournode(82) $neighbour83($b82)"
puts $out1 $dd
set b82 [ expr $b82+1]

}

set b83 0
set a83 [ expr $a82+$count(83)]
for {set i $a82} {$i < $a83 } {incr i} {
set neighbour84($b83) $nei($i)
set dd "set neighbournode(83) $neighbour84($b83)"
puts $out1 $dd	
set b83 [ expr $b83+1]
}

set b84 0
set a84 [ expr $a83+$count(84)]
for {set i $a83} {$i < $a84 } {incr i} {
set neighbour85($b84) $nei($i)
set dd "set neighbournode(84) $neighbour85($b84)"
puts $out1 $dd	
set b84 [ expr $b84+1]
}

set b85 0
set a85 [ expr $a84+$count(85)]
for {set i $a84} {$i < $a85 } {incr i} {
set neighbour86($b85) $nei($i)
set dd "set neighbournode(85) $neighbour86($b85)"
puts $out1 $dd	
set b85 [ expr $b85+1]
}


set b86 0
set a86 [ expr $a85+$count(86)]
for {set i $a85} {$i < $a86 } {incr i} {
set neighbour87($b86) $nei($i)
set dd "set neighbournode(86) $neighbour87($b86)"
puts $out1 $dd
set b86 [ expr $b86+1]
}



set b87 0
set a87 [ expr $a86+$count(87)]
for {set i $a86} {$i < $a87 } {incr i} {
set neighbour88($b87) $nei($i)
set dd "set neighbournode(87) $neighbour88($b87)"
puts $out1 $dd
set b87 [ expr $b87+1]
}


set b88 0
set a88 [ expr $a87+$count(88)]
for {set i $a87} {$i < $a88 } {incr i} {
set neighbour89($b88) $nei($i)
set dd "set neighbournode(88) $neighbour89($b88)"
puts $out1 $dd
set b88 [ expr $b88+1]
}

set b89 0
set a89 [ expr $a88+$count(89)]
for {set i $a88} {$i < $a89 } {incr i} {
set neighbour90($b89) $nei($i)
set dd "set neighbournode(89) $neighbour90($b89)"
puts $out1 $dd
set b89 [ expr $b89+1]
}

set b90 0
set a90 [ expr $a89+$count(90)]
for {set i $a89} {$i < $a90 } {incr i} {
set neighbour91($b90) $nei($i)
set dd "set neighbournode(90) $neighbour91($b90)"
puts $out1 $dd	
set b90 [ expr $b90+1]
}


set b91 0
set a91 [ expr $a90+$count(91)]
for {set i $a90} {$i < $a91 } {incr i} {
set neighbour92($b91) $nei($i)
set dd "set neighbournode(91) $neighbour92($b91)"
puts $out1 $dd
set b91 [ expr $b91+1]

}

set b92 0
set a92 [ expr $a91+$count(92)]
for {set i $a91} {$i < $a92 } {incr i} {
set neighbour93($b92) $nei($i)
set dd "set neighbournode(92) $neighbour93($b92)"
puts $out1 $dd
set b92 [ expr $b92+1]

}

set b93 0
set a93 [ expr $a92+$count(93)]
for {set i $a92} {$i < $a93 } {incr i} {
set neighbour94($b93) $nei($i)
set dd "set neighbournode(93) $neighbour94($b93)"
puts $out1 $dd	
set b93 [ expr $b93+1]
}

set b94 0
set a94 [ expr $a93+$count(94)]
for {set i $a93} {$i < $a94 } {incr i} {
set neighbour95($b94) $nei($i)
set dd "set neighbournode(94) $neighbour95($b94)"
puts $out1 $dd	
set b94 [ expr $b94+1]
}

set b95 0
set a95 [ expr $a94+$count(95)]
for {set i $a94} {$i < $a95 } {incr i} {
set neighbour96($b95) $nei($i)
set dd "set neighbournode(95) $neighbour96($b95)"
puts $out1 $dd	
set b95 [ expr $b95+1]
}


set b96 0
set a96 [ expr $a95+$count(96)]
for {set i $a95} {$i < $a96 } {incr i} {
set neighbour97($b96) $nei($i)
set dd "set neighbournode(96) $neighbour97($b96)"
puts $out1 $dd
set b96 [ expr $b96+1]
}



set b97 0
set a97 [ expr $a96+$count(97)]
for {set i $a96} {$i < $a97 } {incr i} {
set neighbour98($b97) $nei($i)
set dd "set neighbournode(97) $neighbour98($b97)"
puts $out1 $dd
set b97 [ expr $b97+1]
}


set b98 0
set a98 [ expr $a97+$count(98)]
for {set i $a97} {$i < $a98 } {incr i} {
set neighbour99($b98) $nei($i)
set dd "set neighbournode(98) $neighbour99($b98)"
puts $out1 $dd
set b98 [ expr $b98+1]
}

set b99 0
set a99 [ expr $a98+$count(99)]
for {set i $a98} {$i < $a99 } {incr i} {
set neighbour100($b99) $nei($i)
set dd "set neighbournode(99) $neighbour100($b99)"
puts $out1 $dd
set b99 [ expr $b99+1]
}

set b100 0
set a100 [ expr $a99+$count(100)]
for {set i $a99} {$i < $a100 } {incr i} {
set neighbour101($b100) $nei($i)
set dd "set neighbournode(100) $neighbour101($b100)"
puts $out1 $dd	
set b100 [ expr $b100+1]
}

set b101 0
set a101 [ expr $a100+$count(101)]
for {set i $a100} {$i < $a101 } {incr i} {
set neighbour102($b101) $nei($i)
set dd "set neighbournode(101) $neighbour102($b101)"
puts $out1 $dd
set b101 [ expr $b101+1]

}

set b102 0
set a102 [ expr $a101+$count(102)]
for {set i $a101} {$i < $a102 } {incr i} {
set neighbour103($b102) $nei($i)
set dd "set neighbournode(102) $neighbour103($b102)"
puts $out1 $dd
set b102 [ expr $b102+1]

}

set b103 0
set a103 [ expr $a102+$count(103)]
for {set i $a102} {$i < $a103 } {incr i} {
set neighbour104($b103) $nei($i)
set dd "set neighbournode(103) $neighbour104($b103)"
puts $out1 $dd	
set b103 [ expr $b103+1]
}

set b104 0
set a104 [ expr $a103+$count(104)]
for {set i $a103} {$i < $a104 } {incr i} {
set neighbour105($b104) $nei($i)
set dd "set neighbournode(104) $neighbour105($b104)"
puts $out1 $dd	
set b104 [ expr $b104+1]
}

set b105 0
set a105 [ expr $a104+$count(105)]
for {set i $a104} {$i < $a105 } {incr i} {
set neighbour106($b105) $nei($i)
set dd "set neighbournode(105) $neighbour106($b105)"
puts $out1 $dd	
set b105 [ expr $b105+1]
}


set b106 0
set a106 [ expr $a105+$count(106)]
for {set i $a105} {$i < $a106 } {incr i} {
set neighbour107($b106) $nei($i)
set dd "set neighbournode(106) $neighbour107($b106)"
puts $out1 $dd
set b106 [ expr $b106+1]
}



set b107 0
set a107 [ expr $a106+$count(107)]
for {set i $a106} {$i < $a107 } {incr i} {
set neighbour108($b107) $nei($i)
set dd "set neighbournode(107) $neighbour108($b107)"
puts $out1 $dd
set b107 [ expr $b107+1]
}


set b108 0
set a108 [ expr $a107+$count(108)]
for {set i $a107} {$i < $a108 } {incr i} {
set neighbour109($b108) $nei($i)
set dd "set neighbournode(108) $neighbour109($b108)"
puts $out1 $dd
set b108 [ expr $b108+1]
}

set b109 0
set a109 [ expr $a108+$count(109)]
for {set i $a108} {$i < $a109 } {incr i} {
set neighbour110($b109) $nei($i)
set dd "set neighbournode(109) $neighbour110($b109)"
puts $out1 $dd
set b109 [ expr $b109+1]
}

set b110 0
set a110 [ expr $a109+$count(110)]
for {set i $a109} {$i < $a110 } {incr i} {
set neighbour111($b110) $nei($i)
set dd "set neighbournode(110) $neighbour111($b110)"
puts $out1 $dd	
set b110 [ expr $b110+1]
}


set b111 0
set a111 [ expr $a110+$count(111)]
for {set i $a110} {$i < $a111 } {incr i} {
set neighbour112($b111) $nei($i)
set dd "set neighbournode(111) $neighbour112($b111)"
puts $out1 $dd
set b111 [ expr $b111+1]

}

set b112 0
set a112 [ expr $a111+$count(112)]
for {set i $a111} {$i < $a112 } {incr i} {
set neighbour113($b112) $nei($i)
set dd "set neighbournode(112) $neighbour113($b112)"
puts $out1 $dd
set b112 [ expr $b112+1]

}

set b113 0
set a113 [ expr $a112+$count(113)]
for {set i $a112} {$i < $a113 } {incr i} {
set neighbour114($b113) $nei($i)
set dd "set neighbournode(113) $neighbour114($b113)"
puts $out1 $dd	
set b113 [ expr $b113+1]
}

set b114 0
set a114 [ expr $a113+$count(114)]
for {set i $a113} {$i < $a114 } {incr i} {
set neighbour115($b114) $nei($i)
set dd "set neighbournode(114) $neighbour115($b114)"
puts $out1 $dd	
set b114 [ expr $b114+1]
}

set b115 0
set a115 [ expr $a114+$count(115)]
for {set i $a114} {$i < $a115 } {incr i} {
set neighbour116($b115) $nei($i)
set dd "set neighbournode(115) $neighbour116($b115)"
puts $out1 $dd	
set b115 [ expr $b115+1]
}


set b116 0
set a116 [ expr $a115+$count(116)]
for {set i $a115} {$i < $a116 } {incr i} {
set neighbour117($b116) $nei($i)
set dd "set neighbournode(116) $neighbour117($b116)"
puts $out1 $dd
set b116 [ expr $b116+1]
}



set b117 0
set a117 [ expr $a116+$count(117)]
for {set i $a116} {$i < $a117 } {incr i} {
set neighbour118($b117) $nei($i)
set dd "set neighbournode(117) $neighbour118($b117)"
puts $out1 $dd
set b117 [ expr $b117+1]
}


set b118 0
set a118 [ expr $a117+$count(118)]
for {set i $a117} {$i < $a118 } {incr i} {
set neighbour119($b118) $nei($i)
set dd "set neighbournode(118) $neighbour119($b118)"
puts $out1 $dd
set b118 [ expr $b118+1]
}

set b119 0
set a119 [ expr $a118+$count(119)]
for {set i $a118} {$i < $a119 } {incr i} {
set neighbour120($b119) $nei($i)
set dd "set neighbournode(119) $neighbour120($b119)"
puts $out1 $dd
set b119 [ expr $b119+1]
}


set en [open Datarate w]
for {set i 0} {$i < $val(nn)} {incr i} {

puts $en "set nodedatarate($i) [expr rand()*500]"

}
close $en
source Datarate

set a1 [list]

puts "DATA RATE FOR ALL NODES"
puts "--------------------------------------------"
puts "|Node              |   Data Rate           |"
puts "--------------------------------------------"
for {set i 1} {$i < $val(nn) } {incr i} {

set ff $nodedatarate($i)
puts "|       Node($i)    |  $ff   |"   
lappend a1 "$ff"          
} 


puts "|--------------------------------------------|"
set a2 [lsort -real $a1]


set len [llength $a2 ]
set len [expr $len-1]
set ad [list]
set v 1.5

puts "Data Rate"
puts "-------------------------------------------------"
puts "|Node              |         Data Rate          |"
puts "-------------------------------------------------"
for {set m $len} {$m >= 0 } {incr m -1} {
set s1 [lindex $a2 $m]
for {set i 1} {$i < $val(nn) } {incr i} {
set ff [expr $nodedatarate($i)]
if {$ff == $s1} {
puts "|       Node($i)    |    $ff     |"   
set dd [expr $i+1]
set fd [array size neighbour$dd]
foreach {j k} [array get neighbour$dd] {
 
 set sre [lsearch $ad "$i"]
 set sre1 [lsearch $ad "$k"]
 if {$sre == -1 && $i != 0} {
 lappend ad "$i"
 lappend rd "$i"
 $ns at 1.30 "$node_($i) add-mark u Blue circle"
 $ns at 1.30 "$node_($i) label RDPOINT"
 
 }
 if {$sre1 == -1 && $k != 0 } {
 
 lappend ad "$k"
 lappend sd "$k"
 set udp1 [new Agent/UDP]
 $ns attach-agent $node_($i) $udp1
 $ns attach-agent $node_($k) $sink
 set cbr1 [new Application/Traffic/CBR]
 $cbr1 set packetSize_ 512
 $cbr1 set interval_ 0.01
 $cbr1 set random_ 1
 $cbr1 set maxpkts_ 256
 $cbr1 attach-agent $udp1
 $ns connect $udp1 $sink
 $ns at $v.00 "$cbr1 start"
 set n [expr $v+1.0]
 $ns at $v.00 "$cbr1 stop"
 }

}

lappend ad $i
}
}

}

puts "-------------------------------------------------"
set ad [lsort -unique $ad]
puts " Rendezvous Points (RP) $rd"

$ns at 1.30 "$node_(0) add-mark u RED circle"
$ns at 1.30 "$node_(0) label SINK"
set v 5





set holdtime 0
set holdseq 0
set holdrate1 0

proc record {} {

        global sink f0 f1 f2 holdtime holdseq holdrate1
        set ns [Simulator instance]
	set time 0.9 ;#Set Sampling Time to 0.9 Sec
	set bw0 [$sink set bytes_]
        set bw4 [$sink set nlost_]
  	set bw8 [$sink set lastPktTime_]
        set bw9 [$sink set npkts_]
	set now [$ns now]
  
	# Record Bit Rate in Trace Files
        puts $f0 "$now [expr (($bw0+$holdrate1)*8)/(2*$time*1000000)]"

        # Record Packet Loss Rate in File
        puts $f1 "$now [expr $bw4/$time]"
    
	# Record Packet Delay in File

        if { $bw9 > $holdseq } {

                puts $f2 "$now [expr ($bw8 - $holdtime)/($bw9 - $holdseq)]"

        } else {

                puts $f2 "$now [expr ($bw9 - $holdseq)]"

        }

        
	  # Reset Variables

        $sink set bytes_ 0
       
        $sink set nlost_ 0
       
        set holdtime $bw8
        set holdseq $bw9
        set  holdrate1 $bw0

        $ns at [expr $now+$time] "record"   ;#
}



$ns at 0.0 "record"



#===================================
#              ????                                   
#===================================



#??Ping???recv function
Agent/Ping instproc recv {from rtt} {
    $self instvar node_
    puts "node [$node_ id] received ping answer from $from with round-trip-time $rtt ms."
}

# ??MobileNode?????
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "$node_($i) reset";
}

# ??nam????
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 120.1 "puts \"end simulation\" ; $ns halt"

# ???????stop function
proc stop {} {
    global ns tracefd namtrace
    $ns flush-trace
    close $tracefd
    close $namtrace
}

$ns run
