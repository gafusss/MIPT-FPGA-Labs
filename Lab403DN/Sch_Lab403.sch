<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="F50MHz" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="JB4" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29(26:0)" />
        <signal name="JA1" />
        <signal name="JA3" />
        <signal name="XLXN_32" />
        <signal name="JA2" />
        <signal name="clk" />
        <signal name="BTN0" />
        <signal name="SW7" />
        <signal name="BTN3" />
        <signal name="LED0" />
        <signal name="LED1" />
        <signal name="LED2" />
        <signal name="LED7" />
        <signal name="JB3" />
        <signal name="seg_P" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="XLXN_47(15:0)" />
        <signal name="XF(15:0)" />
        <signal name="SW(4:0)" />
        <signal name="Q(32:0)" />
        <signal name="F(15:0)" />
        <signal name="Q(26:0)" />
        <signal name="QD(31:0)" />
        <signal name="FD(31:0)" />
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <signal name="SW(2)" />
        <signal name="SW(4:3)" />
        <signal name="X(15:0)" />
        <signal name="Y(15:0)" />
        <signal name="QD(31:16)" />
        <signal name="QD(15:0)" />
        <signal name="FD(31:16)" />
        <signal name="FD(15:0)" />
        <signal name="SW(2:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="JA1" />
        <port polarity="Output" name="JA3" />
        <port polarity="Output" name="JA2" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="SW7" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="LED0" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="LED2" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="JB3" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Input" name="SW(4:0)" />
        <blockdef name="Gen_Ux">
            <timestamp>2007-8-28T22:14:27</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Fmes_PR_WF">
            <timestamp>2007-8-28T22:10:18</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="HEX27_to_DEC8">
            <timestamp>2007-8-28T22:10:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="FB16_to_FD27">
            <timestamp>2007-8-28T22:10:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BTN_BL">
            <timestamp>2007-8-28T22:14:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Display">
            <timestamp>2007-8-28T22:14:40</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX_BL">
            <timestamp>2007-8-28T22:14:32</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="128" y1="-224" y2="-224" x1="224" />
            <line x2="128" y1="-160" y2="-160" x1="224" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="128" y1="-96" y2="-96" x1="224" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="Gen_Ux" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW7" name="up" />
            <blockpin signalname="BTN3" name="BTN" />
            <blockpin signalname="JA1" name="ceo" />
            <blockpin signalname="JA2" name="ce1ms" />
            <blockpin signalname="JA3" name="Ux" />
            <blockpin signalname="XF(15:0)" name="Xf(15:0)" />
        </block>
        <block symbolname="Fmes_PR_WF" name="XLXI_2">
            <blockpin signalname="JA1" name="ce" />
            <blockpin signalname="JA3" name="Ux" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_7" name="st" />
            <blockpin signalname="XLXN_17" name="Tm" />
            <blockpin name="ce_end" />
            <blockpin signalname="JB4" name="Q_Tm" />
            <blockpin signalname="XLXN_26" name="ok_DIV" />
            <blockpin signalname="Q(32:0)" name="Q(32:0)" />
            <blockpin signalname="F(15:0)" name="F(15:0)" />
            <blockpin signalname="X(15:0)" name="X(15:0)" />
            <blockpin signalname="Y(15:0)" name="Y(15:0)" />
        </block>
        <block symbolname="HEX27_to_DEC8" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_26" name="st" />
            <blockpin signalname="Q(26:0)" name="Dbin(26:0)" />
            <blockpin signalname="QD(31:0)" name="Ddec(31:0)" />
            <blockpin name="ptr_dig(3:0)" />
        </block>
        <block symbolname="HEX27_to_DEC8" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_28" name="st" />
            <blockpin signalname="XLXN_29(26:0)" name="Dbin(26:0)" />
            <blockpin signalname="FD(31:0)" name="Ddec(31:0)" />
            <blockpin name="ptr_dig(3:0)" />
        </block>
        <block symbolname="FB16_to_FD27" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_26" name="st" />
            <blockpin signalname="F(15:0)" name="FBI(15:0)" />
            <blockpin name="EN_conv" />
            <blockpin signalname="XLXN_28" name="ok_conv" />
            <blockpin signalname="XLXN_29(26:0)" name="FDO(26:0)" />
            <blockpin name="cb_tact(4:0)" />
        </block>
        <block symbolname="BTN_BL" name="XLXI_6">
            <blockpin signalname="BTN0" name="btn" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JA2" name="ce" />
            <blockpin signalname="XLXN_7" name="st" />
        </block>
        <block symbolname="Display" name="XLXI_7">
            <blockpin signalname="JA2" name="ce" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_47(15:0)" name="DAT(15:0)" />
            <blockpin signalname="SW(4:3)" name="PTR(1:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="SEG(6:0)" />
        </block>
        <block symbolname="MUX_BL" name="XLXI_8">
            <blockpin signalname="XF(15:0)" name="D0i(15:0)" />
            <blockpin signalname="X(15:0)" name="D1i(15:0)" />
            <blockpin signalname="Y(15:0)" name="D2i(15:0)" />
            <blockpin signalname="F(15:0)" name="D3i(15:0)" />
            <blockpin signalname="QD(31:16)" name="D4i(15:0)" />
            <blockpin signalname="QD(15:0)" name="D5i(15:0)" />
            <blockpin signalname="FD(31:16)" name="D6i(15:0)" />
            <blockpin signalname="FD(15:0)" name="D7i(15:0)" />
            <blockpin signalname="SW(2:0)" name="ADR(2:0)" />
            <blockpin signalname="XLXN_47(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_9">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="obuf4" name="XLXI_10">
            <blockpin signalname="SW(0)" name="I0" />
            <blockpin signalname="SW(1)" name="I1" />
            <blockpin signalname="SW(2)" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="LED0" name="O0" />
            <blockpin signalname="LED1" name="O1" />
            <blockpin signalname="LED2" name="O2" />
            <blockpin signalname="LED7" name="O3" />
        </block>
        <block symbolname="obuf" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="I" />
            <blockpin signalname="JB3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2272" y="1952" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1184" y="368" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1184" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1184" y="1504" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1184" y="1856" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1184" y="2256" name="XLXI_4" orien="R0">
        </instance>
        <instance x="416" y="1264" name="XLXI_6" orien="R0">
        </instance>
        <instance x="368" y="176" name="XLXI_9" orien="R0" />
        <branch name="F50MHz">
            <wire x2="368" y1="144" y2="144" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="144" name="F50MHz" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="1184" y1="1104" y2="1104" x1="800" />
        </branch>
        <instance x="2272" y="1216" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2336" y="704" name="XLXI_10" orien="R0" />
        <instance x="2336" y="768" name="XLXI_11" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="2256" y1="672" y2="672" x1="1568" />
            <wire x2="2336" y1="672" y2="672" x1="2256" />
            <wire x2="2256" y1="672" y2="736" x1="2256" />
            <wire x2="2336" y1="736" y2="736" x1="2256" />
        </branch>
        <branch name="JB4">
            <wire x2="2816" y1="800" y2="800" x1="1568" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1616" y1="1200" y2="1200" x1="1104" />
            <wire x2="1104" y1="1200" y2="1408" x1="1104" />
            <wire x2="1184" y1="1408" y2="1408" x1="1104" />
            <wire x2="1104" y1="1408" y2="1728" x1="1104" />
            <wire x2="1184" y1="1728" y2="1728" x1="1104" />
            <wire x2="1616" y1="864" y2="864" x1="1568" />
            <wire x2="1616" y1="864" y2="1200" x1="1616" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1120" y1="2000" y2="2160" x1="1120" />
            <wire x2="1184" y1="2160" y2="2160" x1="1120" />
            <wire x2="1648" y1="2000" y2="2000" x1="1120" />
            <wire x2="1648" y1="1696" y2="1696" x1="1568" />
            <wire x2="1648" y1="1696" y2="2000" x1="1648" />
        </branch>
        <branch name="XLXN_29(26:0)">
            <wire x2="1136" y1="2016" y2="2224" x1="1136" />
            <wire x2="1184" y1="2224" y2="2224" x1="1136" />
            <wire x2="1632" y1="2016" y2="2016" x1="1136" />
            <wire x2="1632" y1="1760" y2="1760" x1="1568" />
            <wire x2="1632" y1="1760" y2="2016" x1="1632" />
        </branch>
        <branch name="JA1">
            <wire x2="1136" y1="560" y2="672" x1="1136" />
            <wire x2="1184" y1="672" y2="672" x1="1136" />
            <wire x2="1632" y1="560" y2="560" x1="1136" />
            <wire x2="1632" y1="144" y2="144" x1="1568" />
            <wire x2="1632" y1="144" y2="560" x1="1632" />
            <wire x2="2800" y1="144" y2="144" x1="1632" />
        </branch>
        <branch name="JA3">
            <wire x2="1072" y1="512" y2="816" x1="1072" />
            <wire x2="1184" y1="816" y2="816" x1="1072" />
            <wire x2="1696" y1="512" y2="512" x1="1072" />
            <wire x2="1696" y1="272" y2="272" x1="1568" />
            <wire x2="1696" y1="272" y2="512" x1="1696" />
            <wire x2="2800" y1="272" y2="272" x1="1696" />
        </branch>
        <branch name="JA2">
            <wire x2="2144" y1="416" y2="416" x1="288" />
            <wire x2="2144" y1="416" y2="992" x1="2144" />
            <wire x2="2272" y1="992" y2="992" x1="2144" />
            <wire x2="288" y1="416" y2="1232" x1="288" />
            <wire x2="416" y1="1232" y2="1232" x1="288" />
            <wire x2="2144" y1="208" y2="208" x1="1568" />
            <wire x2="2800" y1="208" y2="208" x1="2144" />
            <wire x2="2144" y1="208" y2="416" x1="2144" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="144" type="branch" />
            <wire x2="352" y1="960" y2="1168" x1="352" />
            <wire x2="416" y1="1168" y2="1168" x1="352" />
            <wire x2="864" y1="960" y2="960" x1="352" />
            <wire x2="1184" y1="960" y2="960" x1="864" />
            <wire x2="864" y1="960" y2="1344" x1="864" />
            <wire x2="1184" y1="1344" y2="1344" x1="864" />
            <wire x2="864" y1="1344" y2="1632" x1="864" />
            <wire x2="1184" y1="1632" y2="1632" x1="864" />
            <wire x2="864" y1="1632" y2="2096" x1="864" />
            <wire x2="1184" y1="2096" y2="2096" x1="864" />
            <wire x2="784" y1="144" y2="144" x1="592" />
            <wire x2="864" y1="144" y2="144" x1="784" />
            <wire x2="1184" y1="144" y2="144" x1="864" />
            <wire x2="864" y1="144" y2="960" x1="864" />
        </branch>
        <branch name="BTN0">
            <wire x2="416" y1="1104" y2="1104" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="1104" name="BTN0" orien="R180" />
        <branch name="SW7">
            <wire x2="1184" y1="240" y2="240" x1="304" />
        </branch>
        <branch name="BTN3">
            <wire x2="1184" y1="336" y2="336" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="240" name="SW7" orien="R180" />
        <iomarker fontsize="28" x="304" y="336" name="BTN3" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1056" type="branch" />
            <wire x2="2272" y1="1056" y2="1056" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2800" y="144" name="JA1" orien="R0" />
        <iomarker fontsize="28" x="2800" y="208" name="JA2" orien="R0" />
        <iomarker fontsize="28" x="2800" y="272" name="JA3" orien="R0" />
        <branch name="LED0">
            <wire x2="2592" y1="480" y2="480" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="480" name="LED0" orien="R0" />
        <branch name="LED1">
            <wire x2="2592" y1="544" y2="544" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="544" name="LED1" orien="R0" />
        <branch name="LED2">
            <wire x2="2592" y1="608" y2="608" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="608" name="LED2" orien="R0" />
        <branch name="LED7">
            <wire x2="2592" y1="672" y2="672" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="672" name="LED7" orien="R0" />
        <branch name="JB3">
            <wire x2="2592" y1="736" y2="736" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="736" name="JB3" orien="R0" />
        <iomarker fontsize="28" x="2816" y="800" name="JB4" orien="R0" />
        <branch name="seg_P">
            <wire x2="2688" y1="992" y2="992" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="992" name="seg_P" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2688" y1="1088" y2="1088" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1088" name="AN(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="2688" y1="1184" y2="1184" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1184" name="seg(6:0)" orien="R0" />
        <branch name="XLXN_47(15:0)">
            <wire x2="2192" y1="1120" y2="1264" x1="2192" />
            <wire x2="2720" y1="1264" y2="1264" x1="2192" />
            <wire x2="2720" y1="1264" y2="1408" x1="2720" />
            <wire x2="2272" y1="1120" y2="1120" x1="2192" />
            <wire x2="2720" y1="1408" y2="1408" x1="2656" />
        </branch>
        <branch name="XF(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="336" type="branch" />
            <wire x2="2080" y1="336" y2="336" x1="1568" />
            <wire x2="2096" y1="336" y2="336" x1="2080" />
        </branch>
        <branch name="SW(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="640" type="branch" />
            <wire x2="528" y1="640" y2="640" x1="192" />
            <wire x2="560" y1="640" y2="640" x1="528" />
        </branch>
        <iomarker fontsize="28" x="192" y="640" name="SW(4:0)" orien="R180" />
        <branch name="Q(32:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="928" type="branch" />
            <wire x2="1856" y1="928" y2="928" x1="1568" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="992" type="branch" />
            <wire x2="1856" y1="992" y2="992" x1="1568" />
        </branch>
        <branch name="X(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1056" type="branch" />
            <wire x2="1856" y1="1056" y2="1056" x1="1568" />
            <wire x2="1872" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="Y(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1120" type="branch" />
            <wire x2="1840" y1="1120" y2="1120" x1="1568" />
            <wire x2="1856" y1="1120" y2="1120" x1="1840" />
        </branch>
        <branch name="Q(26:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1472" type="branch" />
            <wire x2="1184" y1="1472" y2="1472" x1="752" />
        </branch>
        <branch name="QD(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1344" type="branch" />
            <wire x2="1776" y1="1344" y2="1344" x1="1568" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1824" type="branch" />
            <wire x2="1184" y1="1824" y2="1824" x1="688" />
        </branch>
        <branch name="FD(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2096" type="branch" />
            <wire x2="1776" y1="2096" y2="2096" x1="1568" />
        </branch>
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="480" type="branch" />
            <wire x2="2336" y1="480" y2="480" x1="2256" />
        </branch>
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="544" type="branch" />
            <wire x2="2336" y1="544" y2="544" x1="2256" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="608" type="branch" />
            <wire x2="2336" y1="608" y2="608" x1="2256" />
        </branch>
        <branch name="SW(4:3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1184" type="branch" />
            <wire x2="2272" y1="1184" y2="1184" x1="2064" />
        </branch>
        <branch name="XF(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1408" type="branch" />
            <wire x2="2272" y1="1408" y2="1408" x1="2144" />
        </branch>
        <branch name="X(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1472" type="branch" />
            <wire x2="2272" y1="1472" y2="1472" x1="2144" />
        </branch>
        <branch name="Y(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1536" type="branch" />
            <wire x2="2272" y1="1536" y2="1536" x1="2144" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1600" type="branch" />
            <wire x2="2272" y1="1600" y2="1600" x1="2144" />
        </branch>
        <branch name="QD(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1664" type="branch" />
            <wire x2="2272" y1="1664" y2="1664" x1="2144" />
        </branch>
        <branch name="QD(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1728" type="branch" />
            <wire x2="2272" y1="1728" y2="1728" x1="2144" />
        </branch>
        <branch name="FD(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1792" type="branch" />
            <wire x2="2272" y1="1792" y2="1792" x1="2144" />
        </branch>
        <branch name="FD(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1856" type="branch" />
            <wire x2="2272" y1="1856" y2="1856" x1="2144" />
        </branch>
        <branch name="SW(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1920" type="branch" />
            <wire x2="2272" y1="1920" y2="1920" x1="2144" />
        </branch>
    </sheet>
</drawing>