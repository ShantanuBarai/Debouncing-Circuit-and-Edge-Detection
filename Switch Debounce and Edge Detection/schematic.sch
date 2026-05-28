# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new button_controller work:button_controller:NOFILE -nosplit
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [19:0] pinBus O output.right [19:0] fillcolor 1
load symbol RTL_MUX8 work MUX pin S input.bot pinBus I0 input.left [19:0] pinBus I1 input.left [19:0] pinBus O output.right [19:0] fillcolor 1
load symbol RTL_MUX5 work MUX pinBus I0 input.left [19:0] pinBus I1 input.left [19:0] pinBus I2 input.left [19:0] pinBus I3 input.left [19:0] pinBus O output.right [19:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX9 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_MUX11 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX10 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin O output.right pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_5 work GEN pin C input.clk.left pin CE input.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG_ASYNC__BREG_3 work GEN pin C input.clk.left pin CLR input.top pin D input.left pin Q output.right fillcolor 1
load symbol RTL_GEQ work RTL(>=) pin O output.right pinBus I0 input.left [19:0] pinBus I1 input.left [19:0] fillcolor 1
load symbol RTL_MUX4 work MUX pin S input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pinBus I1 input.left [1:0] pinBus I2 input.left [1:0] pinBus I3 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_REG__BREG_1 work GEN pin C input.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG_ASYNC__BREG_3 work[1:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [1:0] pinBus Q output.right [1:0] fillcolor 1 sandwich 3 prop @bundle 2
load symbol RTL_REG_ASYNC__BREG_3 work[19:0]ssww GEN pin C input.clk.left pin CLR input.top pinBus D input.left [19:0] pinBus Q output.right [19:0] fillcolor 1 sandwich 3 prop @bundle 20
load port button input -pg 1 -lvl 0 -x 0 -y 90
load port clk input -pg 1 -lvl 0 -x 0 -y 20
load port debounced output -pg 1 -lvl 12 -x 3080 -y 220
load port pulse output -pg 1 -lvl 12 -x 3080 -y 380
load port rst input -pg 1 -lvl 0 -x 0 -y 300
load inst counter0_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[19:0] -pinBusAttr O @name O[19:0] -pg 1 -lvl 3 -x 700 -y 520
load inst counter_i RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[19:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[19:0] -pg 1 -lvl 4 -x 970 -y 510
load inst counter_i__0 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[19:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[19:0] -pg 1 -lvl 5 -x 1280 -y 440
load inst counter_i__1 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[19:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[19:0] -pg 1 -lvl 5 -x 1280 -y 590
load inst counter_i__2 RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[19:0] -pinBusAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[19:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[19:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[19:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 6 -x 1620 -y 400
load inst debounced_i RTL_MUX9 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b01 -pinAttr I1 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 10 -x 2700 -y 240
load inst debounced_i__0 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2420 -y 80
load inst debounced_i__1 RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b0 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2420 -y 200
load inst debounced_i__2 RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 10 -x 2700 -y 90
load inst debounced_reg RTL_REG_ASYNC__BREG_5 work -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 11 -x 2910 -y 220
load inst pulse_i RTL_MUX11 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 9 -x 2420 -y 410
load inst pulse_i__0 RTL_MUX10 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinAttr I1 @attr S=2'b01 -pinAttr I2 @attr S=2'b10 -pinAttr I3 @attr S=2'b11 -pinBusAttr S @name S[1:0] -pg 1 -lvl 10 -x 2700 -y 420
load inst pulse_reg RTL_REG_ASYNC__BREG_3 work -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 11 -x 2910 -y 380
load inst state1_i RTL_GEQ work -attr @cell(#000000) RTL_GEQ -pinBusAttr I0 @name I0[19:0] -pinBusAttr I1 @name I1[19:0] -pinBusAttr I1 @attr V=X\"F423F\" -pg 1 -lvl 8 -x 2170 -y 250
load inst state_i RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"10\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\",\ S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 320 -y 510
load inst state_i__0 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 700 -y 70
load inst state_i__1 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"10\",\ S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 700 -y 210
load inst state_i__2 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 320 -y 390
load inst state_i__3 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"10\",\ S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 700 -y 400
load inst state_i__4 RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=2'b00 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=2'b01 -pinBusAttr I2 @name I2[1:0] -pinBusAttr I2 @attr S=2'b10 -pinBusAttr I3 @name I3[1:0] -pinBusAttr I3 @attr S=2'b11 -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 4 -x 970 -y 200
load inst sync0_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 1 -x 50 -y 80
load inst sync1_reg RTL_REG__BREG_1 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 2 -x 320 -y 70
load inst state_reg[1:0] RTL_REG_ASYNC__BREG_3 work[1:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 5 -x 1280 -y 210
load inst counter_reg[19:0] RTL_REG_ASYNC__BREG_3 work[19:0]ssww -attr @cell(#000000) RTL_REG_ASYNC -pg 1 -lvl 7 -x 1810 -y 250
load net <const0> -ground -pin counter_i I0[19] -pin counter_i I0[18] -pin counter_i I0[17] -pin counter_i I0[16] -pin counter_i I0[15] -pin counter_i I0[14] -pin counter_i I0[13] -pin counter_i I0[12] -pin counter_i I0[11] -pin counter_i I0[10] -pin counter_i I0[9] -pin counter_i I0[8] -pin counter_i I0[7] -pin counter_i I0[6] -pin counter_i I0[5] -pin counter_i I0[4] -pin counter_i I0[3] -pin counter_i I0[2] -pin counter_i I0[1] -pin counter_i I0[0] -pin counter_i__0 I1[19] -pin counter_i__0 I1[18] -pin counter_i__0 I1[17] -pin counter_i__0 I1[16] -pin counter_i__0 I1[15] -pin counter_i__0 I1[14] -pin counter_i__0 I1[13] -pin counter_i__0 I1[12] -pin counter_i__0 I1[11] -pin counter_i__0 I1[10] -pin counter_i__0 I1[9] -pin counter_i__0 I1[8] -pin counter_i__0 I1[7] -pin counter_i__0 I1[6] -pin counter_i__0 I1[5] -pin counter_i__0 I1[4] -pin counter_i__0 I1[3] -pin counter_i__0 I1[2] -pin counter_i__0 I1[1] -pin counter_i__0 I1[0] -pin counter_i__1 I1[19] -pin counter_i__1 I1[18] -pin counter_i__1 I1[17] -pin counter_i__1 I1[16] -pin counter_i__1 I1[15] -pin counter_i__1 I1[14] -pin counter_i__1 I1[13] -pin counter_i__1 I1[12] -pin counter_i__1 I1[11] -pin counter_i__1 I1[10] -pin counter_i__1 I1[9] -pin counter_i__1 I1[8] -pin counter_i__1 I1[7] -pin counter_i__1 I1[6] -pin counter_i__1 I1[5] -pin counter_i__1 I1[4] -pin counter_i__1 I1[3] -pin counter_i__1 I1[2] -pin counter_i__1 I1[1] -pin counter_i__1 I1[0] -pin counter_i__2 I0[19] -pin counter_i__2 I0[18] -pin counter_i__2 I0[17] -pin counter_i__2 I0[16] -pin counter_i__2 I0[15] -pin counter_i__2 I0[14] -pin counter_i__2 I0[13] -pin counter_i__2 I0[12] -pin counter_i__2 I0[11] -pin counter_i__2 I0[10] -pin counter_i__2 I0[9] -pin counter_i__2 I0[8] -pin counter_i__2 I0[7] -pin counter_i__2 I0[6] -pin counter_i__2 I0[5] -pin counter_i__2 I0[4] -pin counter_i__2 I0[3] -pin counter_i__2 I0[2] -pin counter_i__2 I0[1] -pin counter_i__2 I0[0] -pin counter_i__2 I2[19] -pin counter_i__2 I2[18] -pin counter_i__2 I2[17] -pin counter_i__2 I2[16] -pin counter_i__2 I2[15] -pin counter_i__2 I2[14] -pin counter_i__2 I2[13] -pin counter_i__2 I2[12] -pin counter_i__2 I2[11] -pin counter_i__2 I2[10] -pin counter_i__2 I2[9] -pin counter_i__2 I2[8] -pin counter_i__2 I2[7] -pin counter_i__2 I2[6] -pin counter_i__2 I2[5] -pin counter_i__2 I2[4] -pin counter_i__2 I2[3] -pin counter_i__2 I2[2] -pin counter_i__2 I2[1] -pin counter_i__2 I2[0] -pin debounced_i__0 I1 -pin debounced_i__1 I1 -pin debounced_i__2 I0 -pin debounced_i__2 I2 -pin pulse_i I1 -pin pulse_i__0 I0 -pin pulse_i__0 I2 -pin pulse_i__0 I3 -pin state1_i I1[15] -pin state1_i I1[13] -pin state1_i I1[12] -pin state1_i I1[11] -pin state1_i I1[10] -pin state1_i I1[8] -pin state1_i I1[7] -pin state1_i I1[6] -pin state_i I0[0] -pin state_i I1[1] -pin state_i__0 I1[1] -pin state_i__0 I1[0] -pin state_i__1 I1[0] -pin state_i__2 I0[1] -pin state_i__2 I0[0] -pin state_i__3 I1[0]
load net <const1> -power -pin counter0_i I1 -pin state1_i I1[19] -pin state1_i I1[18] -pin state1_i I1[17] -pin state1_i I1[16] -pin state1_i I1[14] -pin state1_i I1[9] -pin state1_i I1[5] -pin state1_i I1[4] -pin state1_i I1[3] -pin state1_i I1[2] -pin state1_i I1[1] -pin state1_i I1[0] -pin state_i I0[1] -pin state_i I1[0] -pin state_i__1 I0[1] -pin state_i__1 I0[0] -pin state_i__1 I1[1] -pin state_i__2 I1[1] -pin state_i__2 I1[0] -pin state_i__3 I1[1]
load net button -port button -pin sync0_reg D
netloc button 1 0 1 NJ 90
load net clk -port clk -pin counter_reg[19:0] C -pin debounced_reg C -pin pulse_reg C -pin state_reg[1:0] C -pin sync0_reg C -pin sync1_reg C
netloc clk 1 0 11 20 20 140 10 NJ 10 NJ 10 1150 300 NJ 300 1760 340 NJ 340 NJ 340 NJ 340 2860
load net counter0[0] -attr @rip(#000000) O[0] -pin counter0_i O[0] -pin counter_i I1[0]
load net counter0[10] -attr @rip(#000000) O[10] -pin counter0_i O[10] -pin counter_i I1[10]
load net counter0[11] -attr @rip(#000000) O[11] -pin counter0_i O[11] -pin counter_i I1[11]
load net counter0[12] -attr @rip(#000000) O[12] -pin counter0_i O[12] -pin counter_i I1[12]
load net counter0[13] -attr @rip(#000000) O[13] -pin counter0_i O[13] -pin counter_i I1[13]
load net counter0[14] -attr @rip(#000000) O[14] -pin counter0_i O[14] -pin counter_i I1[14]
load net counter0[15] -attr @rip(#000000) O[15] -pin counter0_i O[15] -pin counter_i I1[15]
load net counter0[16] -attr @rip(#000000) O[16] -pin counter0_i O[16] -pin counter_i I1[16]
load net counter0[17] -attr @rip(#000000) O[17] -pin counter0_i O[17] -pin counter_i I1[17]
load net counter0[18] -attr @rip(#000000) O[18] -pin counter0_i O[18] -pin counter_i I1[18]
load net counter0[19] -attr @rip(#000000) O[19] -pin counter0_i O[19] -pin counter_i I1[19]
load net counter0[1] -attr @rip(#000000) O[1] -pin counter0_i O[1] -pin counter_i I1[1]
load net counter0[2] -attr @rip(#000000) O[2] -pin counter0_i O[2] -pin counter_i I1[2]
load net counter0[3] -attr @rip(#000000) O[3] -pin counter0_i O[3] -pin counter_i I1[3]
load net counter0[4] -attr @rip(#000000) O[4] -pin counter0_i O[4] -pin counter_i I1[4]
load net counter0[5] -attr @rip(#000000) O[5] -pin counter0_i O[5] -pin counter_i I1[5]
load net counter0[6] -attr @rip(#000000) O[6] -pin counter0_i O[6] -pin counter_i I1[6]
load net counter0[7] -attr @rip(#000000) O[7] -pin counter0_i O[7] -pin counter_i I1[7]
load net counter0[8] -attr @rip(#000000) O[8] -pin counter0_i O[8] -pin counter_i I1[8]
load net counter0[9] -attr @rip(#000000) O[9] -pin counter0_i O[9] -pin counter_i I1[9]
load net counter[0] -attr @rip(#000000) 0 -pin counter0_i I0[0] -pin counter_reg[19:0] Q[0] -pin state1_i I0[0]
load net counter[10] -attr @rip(#000000) 10 -pin counter0_i I0[10] -pin counter_reg[19:0] Q[10] -pin state1_i I0[10]
load net counter[11] -attr @rip(#000000) 11 -pin counter0_i I0[11] -pin counter_reg[19:0] Q[11] -pin state1_i I0[11]
load net counter[12] -attr @rip(#000000) 12 -pin counter0_i I0[12] -pin counter_reg[19:0] Q[12] -pin state1_i I0[12]
load net counter[13] -attr @rip(#000000) 13 -pin counter0_i I0[13] -pin counter_reg[19:0] Q[13] -pin state1_i I0[13]
load net counter[14] -attr @rip(#000000) 14 -pin counter0_i I0[14] -pin counter_reg[19:0] Q[14] -pin state1_i I0[14]
load net counter[15] -attr @rip(#000000) 15 -pin counter0_i I0[15] -pin counter_reg[19:0] Q[15] -pin state1_i I0[15]
load net counter[16] -attr @rip(#000000) 16 -pin counter0_i I0[16] -pin counter_reg[19:0] Q[16] -pin state1_i I0[16]
load net counter[17] -attr @rip(#000000) 17 -pin counter0_i I0[17] -pin counter_reg[19:0] Q[17] -pin state1_i I0[17]
load net counter[18] -attr @rip(#000000) 18 -pin counter0_i I0[18] -pin counter_reg[19:0] Q[18] -pin state1_i I0[18]
load net counter[19] -attr @rip(#000000) 19 -pin counter0_i I0[19] -pin counter_reg[19:0] Q[19] -pin state1_i I0[19]
load net counter[1] -attr @rip(#000000) 1 -pin counter0_i I0[1] -pin counter_reg[19:0] Q[1] -pin state1_i I0[1]
load net counter[2] -attr @rip(#000000) 2 -pin counter0_i I0[2] -pin counter_reg[19:0] Q[2] -pin state1_i I0[2]
load net counter[3] -attr @rip(#000000) 3 -pin counter0_i I0[3] -pin counter_reg[19:0] Q[3] -pin state1_i I0[3]
load net counter[4] -attr @rip(#000000) 4 -pin counter0_i I0[4] -pin counter_reg[19:0] Q[4] -pin state1_i I0[4]
load net counter[5] -attr @rip(#000000) 5 -pin counter0_i I0[5] -pin counter_reg[19:0] Q[5] -pin state1_i I0[5]
load net counter[6] -attr @rip(#000000) 6 -pin counter0_i I0[6] -pin counter_reg[19:0] Q[6] -pin state1_i I0[6]
load net counter[7] -attr @rip(#000000) 7 -pin counter0_i I0[7] -pin counter_reg[19:0] Q[7] -pin state1_i I0[7]
load net counter[8] -attr @rip(#000000) 8 -pin counter0_i I0[8] -pin counter_reg[19:0] Q[8] -pin state1_i I0[8]
load net counter[9] -attr @rip(#000000) 9 -pin counter0_i I0[9] -pin counter_reg[19:0] Q[9] -pin state1_i I0[9]
load net counter__0[0] -attr @rip(#000000) O[0] -pin counter_i__2 O[0] -pin counter_reg[19:0] D[0]
load net counter__0[10] -attr @rip(#000000) O[10] -pin counter_i__2 O[10] -pin counter_reg[19:0] D[10]
load net counter__0[11] -attr @rip(#000000) O[11] -pin counter_i__2 O[11] -pin counter_reg[19:0] D[11]
load net counter__0[12] -attr @rip(#000000) O[12] -pin counter_i__2 O[12] -pin counter_reg[19:0] D[12]
load net counter__0[13] -attr @rip(#000000) O[13] -pin counter_i__2 O[13] -pin counter_reg[19:0] D[13]
load net counter__0[14] -attr @rip(#000000) O[14] -pin counter_i__2 O[14] -pin counter_reg[19:0] D[14]
load net counter__0[15] -attr @rip(#000000) O[15] -pin counter_i__2 O[15] -pin counter_reg[19:0] D[15]
load net counter__0[16] -attr @rip(#000000) O[16] -pin counter_i__2 O[16] -pin counter_reg[19:0] D[16]
load net counter__0[17] -attr @rip(#000000) O[17] -pin counter_i__2 O[17] -pin counter_reg[19:0] D[17]
load net counter__0[18] -attr @rip(#000000) O[18] -pin counter_i__2 O[18] -pin counter_reg[19:0] D[18]
load net counter__0[19] -attr @rip(#000000) O[19] -pin counter_i__2 O[19] -pin counter_reg[19:0] D[19]
load net counter__0[1] -attr @rip(#000000) O[1] -pin counter_i__2 O[1] -pin counter_reg[19:0] D[1]
load net counter__0[2] -attr @rip(#000000) O[2] -pin counter_i__2 O[2] -pin counter_reg[19:0] D[2]
load net counter__0[3] -attr @rip(#000000) O[3] -pin counter_i__2 O[3] -pin counter_reg[19:0] D[3]
load net counter__0[4] -attr @rip(#000000) O[4] -pin counter_i__2 O[4] -pin counter_reg[19:0] D[4]
load net counter__0[5] -attr @rip(#000000) O[5] -pin counter_i__2 O[5] -pin counter_reg[19:0] D[5]
load net counter__0[6] -attr @rip(#000000) O[6] -pin counter_i__2 O[6] -pin counter_reg[19:0] D[6]
load net counter__0[7] -attr @rip(#000000) O[7] -pin counter_i__2 O[7] -pin counter_reg[19:0] D[7]
load net counter__0[8] -attr @rip(#000000) O[8] -pin counter_i__2 O[8] -pin counter_reg[19:0] D[8]
load net counter__0[9] -attr @rip(#000000) O[9] -pin counter_i__2 O[9] -pin counter_reg[19:0] D[9]
load net counter_i__0_n_0 -attr @rip(#000000) O[19] -pin counter_i__0 O[19] -pin counter_i__2 I1[19]
load net counter_i__0_n_1 -attr @rip(#000000) O[18] -pin counter_i__0 O[18] -pin counter_i__2 I1[18]
load net counter_i__0_n_10 -attr @rip(#000000) O[9] -pin counter_i__0 O[9] -pin counter_i__2 I1[9]
load net counter_i__0_n_11 -attr @rip(#000000) O[8] -pin counter_i__0 O[8] -pin counter_i__2 I1[8]
load net counter_i__0_n_12 -attr @rip(#000000) O[7] -pin counter_i__0 O[7] -pin counter_i__2 I1[7]
load net counter_i__0_n_13 -attr @rip(#000000) O[6] -pin counter_i__0 O[6] -pin counter_i__2 I1[6]
load net counter_i__0_n_14 -attr @rip(#000000) O[5] -pin counter_i__0 O[5] -pin counter_i__2 I1[5]
load net counter_i__0_n_15 -attr @rip(#000000) O[4] -pin counter_i__0 O[4] -pin counter_i__2 I1[4]
load net counter_i__0_n_16 -attr @rip(#000000) O[3] -pin counter_i__0 O[3] -pin counter_i__2 I1[3]
load net counter_i__0_n_17 -attr @rip(#000000) O[2] -pin counter_i__0 O[2] -pin counter_i__2 I1[2]
load net counter_i__0_n_18 -attr @rip(#000000) O[1] -pin counter_i__0 O[1] -pin counter_i__2 I1[1]
load net counter_i__0_n_19 -attr @rip(#000000) O[0] -pin counter_i__0 O[0] -pin counter_i__2 I1[0]
load net counter_i__0_n_2 -attr @rip(#000000) O[17] -pin counter_i__0 O[17] -pin counter_i__2 I1[17]
load net counter_i__0_n_3 -attr @rip(#000000) O[16] -pin counter_i__0 O[16] -pin counter_i__2 I1[16]
load net counter_i__0_n_4 -attr @rip(#000000) O[15] -pin counter_i__0 O[15] -pin counter_i__2 I1[15]
load net counter_i__0_n_5 -attr @rip(#000000) O[14] -pin counter_i__0 O[14] -pin counter_i__2 I1[14]
load net counter_i__0_n_6 -attr @rip(#000000) O[13] -pin counter_i__0 O[13] -pin counter_i__2 I1[13]
load net counter_i__0_n_7 -attr @rip(#000000) O[12] -pin counter_i__0 O[12] -pin counter_i__2 I1[12]
load net counter_i__0_n_8 -attr @rip(#000000) O[11] -pin counter_i__0 O[11] -pin counter_i__2 I1[11]
load net counter_i__0_n_9 -attr @rip(#000000) O[10] -pin counter_i__0 O[10] -pin counter_i__2 I1[10]
load net counter_i__1_n_0 -attr @rip(#000000) O[19] -pin counter_i__1 O[19] -pin counter_i__2 I3[19]
load net counter_i__1_n_1 -attr @rip(#000000) O[18] -pin counter_i__1 O[18] -pin counter_i__2 I3[18]
load net counter_i__1_n_10 -attr @rip(#000000) O[9] -pin counter_i__1 O[9] -pin counter_i__2 I3[9]
load net counter_i__1_n_11 -attr @rip(#000000) O[8] -pin counter_i__1 O[8] -pin counter_i__2 I3[8]
load net counter_i__1_n_12 -attr @rip(#000000) O[7] -pin counter_i__1 O[7] -pin counter_i__2 I3[7]
load net counter_i__1_n_13 -attr @rip(#000000) O[6] -pin counter_i__1 O[6] -pin counter_i__2 I3[6]
load net counter_i__1_n_14 -attr @rip(#000000) O[5] -pin counter_i__1 O[5] -pin counter_i__2 I3[5]
load net counter_i__1_n_15 -attr @rip(#000000) O[4] -pin counter_i__1 O[4] -pin counter_i__2 I3[4]
load net counter_i__1_n_16 -attr @rip(#000000) O[3] -pin counter_i__1 O[3] -pin counter_i__2 I3[3]
load net counter_i__1_n_17 -attr @rip(#000000) O[2] -pin counter_i__1 O[2] -pin counter_i__2 I3[2]
load net counter_i__1_n_18 -attr @rip(#000000) O[1] -pin counter_i__1 O[1] -pin counter_i__2 I3[1]
load net counter_i__1_n_19 -attr @rip(#000000) O[0] -pin counter_i__1 O[0] -pin counter_i__2 I3[0]
load net counter_i__1_n_2 -attr @rip(#000000) O[17] -pin counter_i__1 O[17] -pin counter_i__2 I3[17]
load net counter_i__1_n_3 -attr @rip(#000000) O[16] -pin counter_i__1 O[16] -pin counter_i__2 I3[16]
load net counter_i__1_n_4 -attr @rip(#000000) O[15] -pin counter_i__1 O[15] -pin counter_i__2 I3[15]
load net counter_i__1_n_5 -attr @rip(#000000) O[14] -pin counter_i__1 O[14] -pin counter_i__2 I3[14]
load net counter_i__1_n_6 -attr @rip(#000000) O[13] -pin counter_i__1 O[13] -pin counter_i__2 I3[13]
load net counter_i__1_n_7 -attr @rip(#000000) O[12] -pin counter_i__1 O[12] -pin counter_i__2 I3[12]
load net counter_i__1_n_8 -attr @rip(#000000) O[11] -pin counter_i__1 O[11] -pin counter_i__2 I3[11]
load net counter_i__1_n_9 -attr @rip(#000000) O[10] -pin counter_i__1 O[10] -pin counter_i__2 I3[10]
load net counter_i_n_0 -attr @rip(#000000) O[19] -pin counter_i O[19] -pin counter_i__0 I0[19] -pin counter_i__1 I0[19]
load net counter_i_n_1 -attr @rip(#000000) O[18] -pin counter_i O[18] -pin counter_i__0 I0[18] -pin counter_i__1 I0[18]
load net counter_i_n_10 -attr @rip(#000000) O[9] -pin counter_i O[9] -pin counter_i__0 I0[9] -pin counter_i__1 I0[9]
load net counter_i_n_11 -attr @rip(#000000) O[8] -pin counter_i O[8] -pin counter_i__0 I0[8] -pin counter_i__1 I0[8]
load net counter_i_n_12 -attr @rip(#000000) O[7] -pin counter_i O[7] -pin counter_i__0 I0[7] -pin counter_i__1 I0[7]
load net counter_i_n_13 -attr @rip(#000000) O[6] -pin counter_i O[6] -pin counter_i__0 I0[6] -pin counter_i__1 I0[6]
load net counter_i_n_14 -attr @rip(#000000) O[5] -pin counter_i O[5] -pin counter_i__0 I0[5] -pin counter_i__1 I0[5]
load net counter_i_n_15 -attr @rip(#000000) O[4] -pin counter_i O[4] -pin counter_i__0 I0[4] -pin counter_i__1 I0[4]
load net counter_i_n_16 -attr @rip(#000000) O[3] -pin counter_i O[3] -pin counter_i__0 I0[3] -pin counter_i__1 I0[3]
load net counter_i_n_17 -attr @rip(#000000) O[2] -pin counter_i O[2] -pin counter_i__0 I0[2] -pin counter_i__1 I0[2]
load net counter_i_n_18 -attr @rip(#000000) O[1] -pin counter_i O[1] -pin counter_i__0 I0[1] -pin counter_i__1 I0[1]
load net counter_i_n_19 -attr @rip(#000000) O[0] -pin counter_i O[0] -pin counter_i__0 I0[0] -pin counter_i__1 I0[0]
load net counter_i_n_2 -attr @rip(#000000) O[17] -pin counter_i O[17] -pin counter_i__0 I0[17] -pin counter_i__1 I0[17]
load net counter_i_n_3 -attr @rip(#000000) O[16] -pin counter_i O[16] -pin counter_i__0 I0[16] -pin counter_i__1 I0[16]
load net counter_i_n_4 -attr @rip(#000000) O[15] -pin counter_i O[15] -pin counter_i__0 I0[15] -pin counter_i__1 I0[15]
load net counter_i_n_5 -attr @rip(#000000) O[14] -pin counter_i O[14] -pin counter_i__0 I0[14] -pin counter_i__1 I0[14]
load net counter_i_n_6 -attr @rip(#000000) O[13] -pin counter_i O[13] -pin counter_i__0 I0[13] -pin counter_i__1 I0[13]
load net counter_i_n_7 -attr @rip(#000000) O[12] -pin counter_i O[12] -pin counter_i__0 I0[12] -pin counter_i__1 I0[12]
load net counter_i_n_8 -attr @rip(#000000) O[11] -pin counter_i O[11] -pin counter_i__0 I0[11] -pin counter_i__1 I0[11]
load net counter_i_n_9 -attr @rip(#000000) O[10] -pin counter_i O[10] -pin counter_i__0 I0[10] -pin counter_i__1 I0[10]
load net debounced -port debounced -pin debounced_reg Q
netloc debounced 1 11 1 NJ 220
load net debounced_i__0_n_0 -pin debounced_i__0 O -pin debounced_i__2 I1
netloc debounced_i__0_n_0 1 9 1 N 80
load net debounced_i__1_n_0 -pin debounced_i__1 O -pin debounced_i__2 I3
netloc debounced_i__1_n_0 1 9 1 2540 120n
load net debounced_i__2_n_0 -pin debounced_i__2 O -pin debounced_reg CE
netloc debounced_i__2_n_0 1 10 1 2840 90n
load net debounced_i_n_0 -pin debounced_i O -pin debounced_reg D
netloc debounced_i_n_0 1 10 1 N 240
load net pulse -port pulse -pin pulse_reg Q
netloc pulse 1 11 1 NJ 380
load net pulse_i__0_n_0 -pin pulse_i__0 O -pin pulse_reg D
netloc pulse_i__0_n_0 1 10 1 2820 390n
load net pulse_i_n_0 -pin pulse_i O -pin pulse_i__0 I1
netloc pulse_i_n_0 1 9 1 N 410
load net rst -pin counter_reg[19:0] CLR -pin debounced_reg CLR -pin pulse_reg CLR -port rst -pin state_reg[1:0] CLR
netloc rst 1 0 11 NJ 300 NJ 300 NJ 300 NJ 300 1110J 150N NJ 150 1760 190N 2010J 320 NJ 320 NJ 320 2820
load net state0_out[0] -attr @rip(#000000) O[0] -pin state_i__4 O[0] -pin state_reg[1:0] D[0]
load net state0_out[1] -attr @rip(#000000) O[1] -pin state_i__4 O[1] -pin state_reg[1:0] D[1]
load net state1 -pin counter_i S -pin debounced_i I0 -pin debounced_i__0 I0 -pin debounced_i__1 I0 -pin pulse_i I0 -pin state1_i O -pin state_i S -pin state_i__2 S
netloc state1 1 2 8 440 570 NJ 570N 1090 530 NJ 530 NJ 530 NJ 530 2280 290 2540
load net state[0] -attr @rip(#000000) 0 -pin counter_i__2 S[0] -pin debounced_i S[0] -pin debounced_i__2 S[0] -pin pulse_i__0 S[0] -pin state_i__4 S[0] -pin state_reg[1:0] Q[0]
load net state[1] -attr @rip(#000000) 1 -pin counter_i__2 S[1] -pin debounced_i S[1] -pin debounced_i__2 S[1] -pin pulse_i__0 S[1] -pin state_i__4 S[1] -pin state_reg[1:0] Q[1]
load net state__0[0] -attr @rip(#000000) O[0] -pin state_i__3 O[0] -pin state_i__4 I3[0]
load net state__0[1] -attr @rip(#000000) O[1] -pin state_i__3 O[1] -pin state_i__4 I3[1]
load net state_i__0_n_0 -attr @rip(#000000) O[1] -pin state_i__0 O[1] -pin state_i__4 I1[1]
load net state_i__0_n_1 -attr @rip(#000000) O[0] -pin state_i__0 O[0] -pin state_i__4 I1[0]
load net state_i__1_n_0 -attr @rip(#000000) O[1] -pin state_i__1 O[1] -pin state_i__4 I2[1]
load net state_i__1_n_1 -attr @rip(#000000) O[0] -pin state_i__1 O[0] -pin state_i__4 I2[0]
load net state_i__2_n_0 -attr @rip(#000000) O[1] -pin state_i__2 O[1] -pin state_i__3 I0[1]
load net state_i__2_n_1 -attr @rip(#000000) O[0] -pin state_i__2 O[0] -pin state_i__3 I0[0]
load net state_i_n_0 -attr @rip(#000000) O[1] -pin state_i O[1] -pin state_i__0 I0[1]
load net state_i_n_1 -attr @rip(#000000) O[0] -pin state_i O[0] -pin state_i__0 I0[0]
load net sync0 -pin sync0_reg Q -pin sync1_reg D
netloc sync0 1 1 1 N 80
load net sync1 -pin counter_i__0 S -pin counter_i__1 S -pin debounced_i I1 -pin debounced_i__0 S -pin debounced_i__1 S -pin pulse_i S -pin state_i__0 S -pin state_i__1 S -pin state_i__3 S -pin state_i__4 I0 -pin sync1_reg Q
netloc sync1 1 2 8 460 130N 820 340 1130 500N 1430J 510 NJ 510 NJ 510 2300 140N 2560
load netBundle @counter0 20 counter0[19] counter0[18] counter0[17] counter0[16] counter0[15] counter0[14] counter0[13] counter0[12] counter0[11] counter0[10] counter0[9] counter0[8] counter0[7] counter0[6] counter0[5] counter0[4] counter0[3] counter0[2] counter0[1] counter0[0] -autobundled
netbloc @counter0 1 3 1 NJ 520
load netBundle @counter_i_n_ 20 counter_i_n_0 counter_i_n_1 counter_i_n_2 counter_i_n_3 counter_i_n_4 counter_i_n_5 counter_i_n_6 counter_i_n_7 counter_i_n_8 counter_i_n_9 counter_i_n_10 counter_i_n_11 counter_i_n_12 counter_i_n_13 counter_i_n_14 counter_i_n_15 counter_i_n_16 counter_i_n_17 counter_i_n_18 counter_i_n_19 -autobundled
netbloc @counter_i_n_ 1 4 1 1110 430n
load netBundle @counter_i__0_n_ 20 counter_i__0_n_0 counter_i__0_n_1 counter_i__0_n_2 counter_i__0_n_3 counter_i__0_n_4 counter_i__0_n_5 counter_i__0_n_6 counter_i__0_n_7 counter_i__0_n_8 counter_i__0_n_9 counter_i__0_n_10 counter_i__0_n_11 counter_i__0_n_12 counter_i__0_n_13 counter_i__0_n_14 counter_i__0_n_15 counter_i__0_n_16 counter_i__0_n_17 counter_i__0_n_18 counter_i__0_n_19 -autobundled
netbloc @counter_i__0_n_ 1 5 1 1430 390n
load netBundle @counter_i__1_n_ 20 counter_i__1_n_0 counter_i__1_n_1 counter_i__1_n_2 counter_i__1_n_3 counter_i__1_n_4 counter_i__1_n_5 counter_i__1_n_6 counter_i__1_n_7 counter_i__1_n_8 counter_i__1_n_9 counter_i__1_n_10 counter_i__1_n_11 counter_i__1_n_12 counter_i__1_n_13 counter_i__1_n_14 counter_i__1_n_15 counter_i__1_n_16 counter_i__1_n_17 counter_i__1_n_18 counter_i__1_n_19 -autobundled
netbloc @counter_i__1_n_ 1 5 1 1470 430n
load netBundle @counter__0 20 counter__0[19] counter__0[18] counter__0[17] counter__0[16] counter__0[15] counter__0[14] counter__0[13] counter__0[12] counter__0[11] counter__0[10] counter__0[9] counter__0[8] counter__0[7] counter__0[6] counter__0[5] counter__0[4] counter__0[3] counter__0[2] counter__0[1] counter__0[0] -autobundled
netbloc @counter__0 1 6 1 1740 260n
load netBundle @state_i_n_ 2 state_i_n_0 state_i_n_1 -autobundled
netbloc @state_i_n_ 1 2 1 480 60n
load netBundle @state_i__0_n_ 2 state_i__0_n_0 state_i__0_n_1 -autobundled
netbloc @state_i__0_n_ 1 3 1 840 70n
load netBundle @state_i__1_n_ 2 state_i__1_n_0 state_i__1_n_1 -autobundled
netbloc @state_i__1_n_ 1 3 1 N 210
load netBundle @state_i__2_n_ 2 state_i__2_n_0 state_i__2_n_1 -autobundled
netbloc @state_i__2_n_ 1 2 1 N 390
load netBundle @state__0 2 state__0[1] state__0[0] -autobundled
netbloc @state__0 1 3 1 840 230n
load netBundle @state0_out 2 state0_out[1] state0_out[0] -autobundled
netbloc @state0_out 1 4 1 1130 200n
load netBundle @state 2 state[1] state[0] -autobundled
netbloc @state 1 4 6 N 280 1450 480N 1740 550 NJ 550 NJ 550 2580
load netBundle @counter 20 counter[19] counter[18] counter[17] counter[16] counter[15] counter[14] counter[13] counter[12] counter[11] counter[10] counter[9] counter[8] counter[7] counter[6] counter[5] counter[4] counter[3] counter[2] counter[1] counter[0] -autobundled
netbloc @counter 1 2 6 500 320 NJ 320 NJ 320 NJ 320 NJ 320 1990
levelinfo -pg 1 0 50 320 700 970 1280 1620 1810 2170 2420 2700 2910 3080
pagesize -pg 1 -db -bbox -sgen -100 0 3200 680
show
fullfit
#
# initialize ictrl to current module button_controller work:button_controller:NOFILE
ictrl init topinfo |
