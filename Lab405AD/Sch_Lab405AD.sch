<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="F50MHz" />
        <signal name="clk" />
        <signal name="XLXN_4(22:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_7(1:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(22:0)" />
        <signal name="BTN3" />
        <signal name="JB2" />
        <signal name="JB1" />
        <signal name="JB7" />
        <signal name="LED7" />
        <signal name="JC1" />
        <signal name="JB3" />
        <signal name="JB4" />
        <signal name="JB8" />
        <signal name="JB9" />
        <signal name="JC2" />
        <signal name="ce1ms" />
        <signal name="SW(3:0)" />
        <signal name="SW(1:0)" />
        <signal name="SW(2)" />
        <signal name="seg_P" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="XLXN_31" />
        <signal name="XLXN_34" />
        <signal name="SW(3)" />
        <signal name="XLXN_36" />
        <signal name="JA7" />
        <signal name="JA1" />
        <signal name="JC4" />
        <signal name="BTN0" />
        <signal name="XLXN_44(22:0)" />
        <signal name="XLXN_45(7:0)" />
        <signal name="DAT_RX(22:0)" />
        <signal name="ADR_RX(7:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="JB2" />
        <port polarity="Output" name="JB1" />
        <port polarity="Output" name="JB7" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="JC1" />
        <port polarity="Output" name="JB3" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="JB8" />
        <port polarity="Output" name="JB9" />
        <port polarity="Output" name="JC2" />
        <port polarity="Input" name="SW(3:0)" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Input" name="JA7" />
        <port polarity="Input" name="JA1" />
        <port polarity="Output" name="JC4" />
        <port polarity="Input" name="BTN0" />
        <blockdef name="ADR_DAT_BL">
            <timestamp>2017-4-22T7:39:3</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AR_TXD">
            <timestamp>2017-4-22T7:34:39</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AR_MUX">
            <timestamp>2017-4-22T7:50:24</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
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
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2017-4-22T7:36:48</timestamp>
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
        <blockdef name="AR_RXD">
            <timestamp>2017-4-22T7:34:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BUF32bit">
            <timestamp>2017-4-22T7:50:46</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="ADR_DAT_BL" name="XLXI_1">
            <blockpin signalname="BTN3" name="BTN" />
            <blockpin signalname="XLXN_7(1:0)" name="VEL(1:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="ADR(7:0)" />
            <blockpin signalname="XLXN_4(22:0)" name="DAT(22:0)" />
        </block>
        <block symbolname="AR_TXD" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce1ms" name="st" />
            <blockpin signalname="XLXN_7(1:0)" name="Nvel(1:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="ADR(7:0)" />
            <blockpin signalname="XLXN_4(22:0)" name="DAT(22:0)" />
            <blockpin signalname="JB2" name="ce_tact" />
            <blockpin signalname="JB1" name="TXD1" />
            <blockpin signalname="JB7" name="TXD0" />
            <blockpin signalname="LED7" name="SLP" />
            <blockpin signalname="JC1" name="en_tx" />
            <blockpin signalname="JB3" name="T_cp" />
            <blockpin signalname="JB4" name="FT_cp" />
            <blockpin signalname="JB8" name="SDAT" />
            <blockpin signalname="JB9" name="QM" />
            <blockpin signalname="JC2" name="en_tx_word" />
            <blockpin name="cb_bit(5:0)" />
        </block>
        <block symbolname="AR_MUX" name="XLXI_3">
            <blockpin signalname="XLXN_6(7:0)" name="ADR_TX(7:0)" />
            <blockpin signalname="XLXN_4(22:0)" name="DAT_TX(22:0)" />
            <blockpin signalname="ADR_RX(7:0)" name="ADR_RX(7:0)" />
            <blockpin signalname="DAT_RX(22:0)" name="DAT_RX(22:0)" />
            <blockpin signalname="SW(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="DISPL(15:0)" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW(2)" name="set_P" />
            <blockpin signalname="XLXN_5(15:0)" name="dat(15:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin signalname="ce1ms" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="AR_RXD" name="XLXI_5">
            <blockpin signalname="XLXN_31" name="Inp0" />
            <blockpin signalname="XLXN_34" name="Inp1" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JC4" name="ce_wr" />
            <blockpin signalname="XLXN_44(22:0)" name="sr_dat(22:0)" />
            <blockpin signalname="XLXN_45(7:0)" name="sr_adr(7:0)" />
        </block>
        <block symbolname="BUF32bit" name="XLXI_6">
            <blockpin signalname="JC4" name="ce" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin signalname="XLXN_44(22:0)" name="sr_dat(22:0)" />
            <blockpin signalname="XLXN_45(7:0)" name="sr_adr(7:0)" />
            <blockpin signalname="DAT_RX(22:0)" name="RX_DAT(22:0)" />
            <blockpin signalname="ADR_RX(7:0)" name="RX_ADR(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_7">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_8">
            <blockpin signalname="JB7" name="D0" />
            <blockpin signalname="JA7" name="D1" />
            <blockpin signalname="SW(3)" name="S0" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_9">
            <blockpin signalname="JB1" name="D0" />
            <blockpin signalname="JA1" name="D1" />
            <blockpin signalname="SW(3)" name="S0" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="512" name="XLXI_7" orien="R0" />
        <branch name="F50MHz">
            <wire x2="800" y1="480" y2="480" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="480" name="F50MHz" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="480" type="branch" />
            <wire x2="1344" y1="480" y2="480" x1="1024" />
            <wire x2="1680" y1="480" y2="480" x1="1344" />
        </branch>
        <instance x="1680" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4(22:0)">
            <wire x2="976" y1="1120" y2="1120" x1="912" />
            <wire x2="1680" y1="1120" y2="1120" x1="976" />
            <wire x2="976" y1="1120" y2="1536" x1="976" />
            <wire x2="1104" y1="1536" y2="1536" x1="976" />
        </branch>
        <instance x="1824" y="1504" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_5(15:0)">
            <wire x2="1824" y1="1472" y2="1472" x1="1536" />
        </branch>
        <instance x="1104" y="1760" name="XLXI_3" orien="R0">
        </instance>
        <instance x="528" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_6(7:0)">
            <wire x2="1040" y1="1056" y2="1056" x1="912" />
            <wire x2="1296" y1="1056" y2="1056" x1="1040" />
            <wire x2="1040" y1="1056" y2="1472" x1="1040" />
            <wire x2="1104" y1="1472" y2="1472" x1="1040" />
            <wire x2="1296" y1="960" y2="1056" x1="1296" />
            <wire x2="1680" y1="960" y2="960" x1="1296" />
        </branch>
        <branch name="XLXN_7(1:0)">
            <wire x2="1280" y1="992" y2="992" x1="912" />
            <wire x2="1280" y1="800" y2="992" x1="1280" />
            <wire x2="1680" y1="800" y2="800" x1="1280" />
        </branch>
        <branch name="BTN3">
            <wire x2="528" y1="992" y2="992" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="992" name="BTN3" orien="R180" />
        <branch name="JB2">
            <wire x2="2096" y1="480" y2="480" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="480" name="JB2" orien="R0" />
        <branch name="JB1">
            <wire x2="2096" y1="544" y2="544" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="544" name="JB1" orien="R0" />
        <branch name="JB7">
            <wire x2="2096" y1="608" y2="608" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="608" name="JB7" orien="R0" />
        <branch name="LED7">
            <wire x2="2096" y1="672" y2="672" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="672" name="LED7" orien="R0" />
        <branch name="JC1">
            <wire x2="2096" y1="736" y2="736" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="736" name="JC1" orien="R0" />
        <branch name="JB3">
            <wire x2="2096" y1="800" y2="800" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="800" name="JB3" orien="R0" />
        <branch name="JB4">
            <wire x2="2096" y1="864" y2="864" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="864" name="JB4" orien="R0" />
        <branch name="JB8">
            <wire x2="2096" y1="928" y2="928" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="928" name="JB8" orien="R0" />
        <branch name="JB9">
            <wire x2="2096" y1="992" y2="992" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="992" name="JB9" orien="R0" />
        <branch name="JC2">
            <wire x2="2096" y1="1056" y2="1056" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1056" name="JC2" orien="R0" />
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1344" type="branch" />
            <wire x2="2368" y1="1344" y2="1344" x1="2208" />
        </branch>
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="640" type="branch" />
            <wire x2="1680" y1="640" y2="640" x1="1552" />
        </branch>
        <branch name="SW(3:0)">
            <wire x2="800" y1="1408" y2="1408" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1408" name="SW(3:0)" orien="R180" />
        <branch name="SW(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1728" type="branch" />
            <wire x2="1104" y1="1728" y2="1728" x1="1008" />
        </branch>
        <instance x="1136" y="2048" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1280" type="branch" />
            <wire x2="1824" y1="1280" y2="1280" x1="1728" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1376" type="branch" />
            <wire x2="1824" y1="1376" y2="1376" x1="1728" />
        </branch>
        <branch name="seg_P">
            <wire x2="2240" y1="1280" y2="1280" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1280" name="seg_P" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2240" y1="1408" y2="1408" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1408" name="AN(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="2240" y1="1472" y2="1472" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1472" name="seg(6:0)" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1136" y1="1888" y2="1888" x1="1056" />
        </branch>
        <instance x="736" y="2016" name="XLXI_8" orien="R0" />
        <instance x="736" y="2304" name="XLXI_9" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="2016" type="branch" />
            <wire x2="1136" y1="2016" y2="2016" x1="1088" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1120" y1="2176" y2="2176" x1="1056" />
            <wire x2="1136" y1="1952" y2="1952" x1="1120" />
            <wire x2="1120" y1="1952" y2="2176" x1="1120" />
        </branch>
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="2272" type="branch" />
            <wire x2="688" y1="2272" y2="2272" x1="640" />
            <wire x2="736" y1="2272" y2="2272" x1="688" />
            <wire x2="736" y1="1984" y2="1984" x1="688" />
            <wire x2="688" y1="1984" y2="2272" x1="688" />
        </branch>
        <branch name="JB7">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1856" type="branch" />
            <wire x2="736" y1="1856" y2="1856" x1="624" />
        </branch>
        <branch name="JA7">
            <wire x2="736" y1="1920" y2="1920" x1="624" />
        </branch>
        <branch name="JB1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="2144" type="branch" />
            <wire x2="736" y1="2144" y2="2144" x1="624" />
        </branch>
        <branch name="JA1">
            <wire x2="736" y1="2208" y2="2208" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="1920" name="JA7" orien="R180" />
        <iomarker fontsize="28" x="624" y="2208" name="JA1" orien="R180" />
        <instance x="1792" y="2176" name="XLXI_6" orien="R0">
        </instance>
        <branch name="JC4">
            <wire x2="1664" y1="1888" y2="1888" x1="1520" />
            <wire x2="1792" y1="1888" y2="1888" x1="1664" />
            <wire x2="1664" y1="1568" y2="1888" x1="1664" />
            <wire x2="2240" y1="1568" y2="1568" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1568" name="JC4" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1952" type="branch" />
            <wire x2="1792" y1="1952" y2="1952" x1="1760" />
        </branch>
        <branch name="BTN0">
            <wire x2="1792" y1="2016" y2="2016" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="2016" name="BTN0" orien="R180" />
        <branch name="XLXN_44(22:0)">
            <wire x2="1616" y1="1952" y2="1952" x1="1520" />
            <wire x2="1616" y1="1952" y2="2080" x1="1616" />
            <wire x2="1792" y1="2080" y2="2080" x1="1616" />
        </branch>
        <branch name="XLXN_45(7:0)">
            <wire x2="1568" y1="2016" y2="2016" x1="1520" />
            <wire x2="1568" y1="2016" y2="2144" x1="1568" />
            <wire x2="1792" y1="2144" y2="2144" x1="1568" />
        </branch>
        <branch name="DAT_RX(22:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1888" type="branch" />
            <wire x2="2272" y1="1888" y2="1888" x1="2224" />
        </branch>
        <branch name="ADR_RX(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="2144" type="branch" />
            <wire x2="2272" y1="2144" y2="2144" x1="2224" />
        </branch>
        <branch name="DAT_RX(22:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1664" type="branch" />
            <wire x2="1104" y1="1664" y2="1664" x1="1040" />
        </branch>
        <branch name="ADR_RX(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1600" type="branch" />
            <wire x2="1104" y1="1600" y2="1600" x1="1040" />
        </branch>
    </sheet>
</drawing>