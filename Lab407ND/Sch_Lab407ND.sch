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
        <signal name="JC2" />
        <signal name="JB1" />
        <signal name="JB2" />
        <signal name="JB3" />
        <signal name="JC3" />
        <signal name="BTN0" />
        <signal name="XLXN_12(14:0)" />
        <signal name="XLXN_13(14:0)" />
        <signal name="JC1" />
        <signal name="SW(2)" />
        <signal name="LOAD" />
        <signal name="LED0" />
        <signal name="JB4" />
        <signal name="MTX_DAT(15:0)" />
        <signal name="STX_DAT(15:0)" />
        <signal name="MRX_DAT(14:0)" />
        <signal name="SRX_DAT(14:0)" />
        <signal name="SW(1:0)" />
        <signal name="SRX_DAT(15:0)" />
        <signal name="MRX_DAT(15:0)" />
        <signal name="XLXN_35(15:0)" />
        <signal name="seg_P" />
        <signal name="JC4" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="SW(2:0)" />
        <signal name="LED7" />
        <signal name="LED6" />
        <signal name="LED5" />
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="JC2" />
        <port polarity="Output" name="JB1" />
        <port polarity="Output" name="JB2" />
        <port polarity="Output" name="JB3" />
        <port polarity="Output" name="JC3" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="JC1" />
        <port polarity="Output" name="LED0" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="JC4" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Input" name="SW(2:0)" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="LED6" />
        <port polarity="Output" name="LED5" />
        <blockdef name="Gen_st">
            <timestamp>2017-3-18T8:38:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SPI_MASTER">
            <timestamp>2017-3-18T8:9:45</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
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
        <blockdef name="SOURCES_DAT">
            <timestamp>2017-3-18T8:32:41</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX64_16">
            <timestamp>2017-3-18T8:15:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="SPI_SLAVE">
            <timestamp>2017-3-18T8:47:31</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-220" height="24" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2017-3-18T8:12:19</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <block symbolname="Gen_st" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JC2" name="ce_st" />
        </block>
        <block symbolname="SPI_MASTER" name="XLXI_2">
            <blockpin signalname="JC2" name="st" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JB4" name="MISO" />
            <blockpin signalname="BTN0" name="clr" />
            <blockpin signalname="XLXN_12(14:0)" name="DI(14:0)" />
            <blockpin signalname="JB1" name="LOAD" />
            <blockpin signalname="JB2" name="SCLK" />
            <blockpin signalname="JB3" name="MOSI" />
            <blockpin name="ce" />
            <blockpin signalname="JC3" name="ce_tact" />
            <blockpin name="cb_bit(7:0)" />
            <blockpin name="sr_MTX(14:0)" />
            <blockpin name="sr_MRX(14:0)" />
            <blockpin signalname="MRX_DAT(14:0)" name="DO(14:0)" />
        </block>
        <block symbolname="SOURCES_DAT" name="XLXI_3">
            <blockpin signalname="XLXN_12(14:0)" name="MASTER_dat(14:0)" />
            <blockpin signalname="MTX_DAT(15:0)" name="MASTER_dat_disp(15:0)" />
            <blockpin signalname="STX_DAT(15:0)" name="SLAVE_dat_disp(15:0)" />
            <blockpin signalname="XLXN_13(14:0)" name="SLAVE_dat(14:0)" />
        </block>
        <block symbolname="MUX64_16" name="XLXI_4">
            <blockpin signalname="MTX_DAT(15:0)" name="A(15:0)" />
            <blockpin signalname="MRX_DAT(15:0)" name="B(15:0)" />
            <blockpin signalname="STX_DAT(15:0)" name="C(15:0)" />
            <blockpin signalname="SRX_DAT(15:0)" name="D(15:0)" />
            <blockpin signalname="SW(1:0)" name="S(1:0)" />
            <blockpin signalname="XLXN_35(15:0)" name="DO(15:0)" />
        </block>
        <block symbolname="SPI_SLAVE" name="XLXI_5">
            <blockpin signalname="JB4" name="MISO" />
            <blockpin signalname="SRX_DAT(14:0)" name="DO(14:0)" />
            <blockpin name="sr_STX(14:0)" />
            <blockpin name="sr_SRX(14:0)" />
            <blockpin signalname="XLXN_13(14:0)" name="DI(14:0)" />
            <blockpin signalname="JB3" name="MOSI" />
            <blockpin signalname="LOAD" name="LOAD" />
            <blockpin signalname="BTN0" name="clr" />
            <blockpin signalname="JB2" name="SCLK" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_35(15:0)" name="dat(15:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin signalname="JC4" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_7">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_8">
            <blockpin signalname="JC1" name="D0" />
            <blockpin signalname="JB1" name="D1" />
            <blockpin signalname="SW(2)" name="S0" />
            <blockpin signalname="LOAD" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="LOAD" name="I" />
            <blockpin signalname="LED0" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_10">
            <blockpin signalname="JC1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="SW(0)" name="I" />
            <blockpin signalname="LED7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="SW(1)" name="I" />
            <blockpin signalname="LED6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="SW(2)" name="I" />
            <blockpin signalname="LED5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="480" y="624" name="XLXI_7" orien="R0" />
        <branch name="F50MHz">
            <wire x2="480" y1="592" y2="592" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="592" name="F50MHz" orien="R180" />
        <instance x="896" y="1008" name="XLXI_2" orien="R0">
        </instance>
        <instance x="464" y="496" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="592" type="branch" />
            <wire x2="448" y1="464" y2="528" x1="448" />
            <wire x2="464" y1="528" y2="528" x1="448" />
            <wire x2="816" y1="528" y2="528" x1="464" />
            <wire x2="816" y1="528" y2="592" x1="816" />
            <wire x2="832" y1="592" y2="592" x1="816" />
            <wire x2="896" y1="592" y2="592" x1="832" />
            <wire x2="464" y1="464" y2="464" x1="448" />
            <wire x2="816" y1="592" y2="592" x1="704" />
        </branch>
        <branch name="JC2">
            <wire x2="864" y1="464" y2="464" x1="848" />
            <wire x2="896" y1="464" y2="464" x1="864" />
            <wire x2="864" y1="336" y2="464" x1="864" />
            <wire x2="1328" y1="336" y2="336" x1="864" />
        </branch>
        <iomarker fontsize="28" x="1328" y="336" name="JC2" orien="R0" />
        <branch name="JB1">
            <wire x2="1312" y1="464" y2="464" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1312" y="464" name="JB1" orien="R0" />
        <branch name="JB2">
            <wire x2="1312" y1="528" y2="528" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1312" y="528" name="JB2" orien="R0" />
        <branch name="JB3">
            <wire x2="1312" y1="592" y2="592" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1312" y="592" name="JB3" orien="R0" />
        <branch name="JC3">
            <wire x2="1312" y1="720" y2="720" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1312" y="720" name="JC3" orien="R0" />
        <branch name="BTN0">
            <wire x2="896" y1="848" y2="848" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="848" name="BTN0" orien="R180" />
        <instance x="352" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_12(14:0)">
            <wire x2="816" y1="1168" y2="1168" x1="736" />
            <wire x2="816" y1="976" y2="1168" x1="816" />
            <wire x2="896" y1="976" y2="976" x1="816" />
        </branch>
        <instance x="896" y="1840" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_13(14:0)">
            <wire x2="752" y1="1360" y2="1360" x1="736" />
            <wire x2="816" y1="1360" y2="1360" x1="752" />
            <wire x2="816" y1="1360" y2="1552" x1="816" />
            <wire x2="896" y1="1552" y2="1552" x1="816" />
        </branch>
        <instance x="1584" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <instance x="432" y="1872" name="XLXI_8" orien="R0" />
        <branch name="JC1">
            <wire x2="384" y1="1712" y2="1712" x1="336" />
            <wire x2="432" y1="1712" y2="1712" x1="384" />
        </branch>
        <instance x="320" y="1712" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="336" y="1712" name="JC1" orien="R180" />
        <branch name="JB1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1776" type="branch" />
            <wire x2="432" y1="1776" y2="1776" x1="384" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1840" type="branch" />
            <wire x2="432" y1="1840" y2="1840" x1="368" />
        </branch>
        <branch name="LOAD">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1744" type="branch" />
            <wire x2="784" y1="1744" y2="1744" x1="752" />
            <wire x2="896" y1="1744" y2="1744" x1="784" />
        </branch>
        <branch name="JB2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1616" type="branch" />
            <wire x2="816" y1="1616" y2="1616" x1="800" />
            <wire x2="896" y1="1616" y2="1616" x1="816" />
        </branch>
        <branch name="JB3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1680" type="branch" />
            <wire x2="816" y1="1680" y2="1680" x1="800" />
            <wire x2="896" y1="1680" y2="1680" x1="816" />
        </branch>
        <branch name="BTN0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1808" type="branch" />
            <wire x2="816" y1="1808" y2="1808" x1="800" />
            <wire x2="896" y1="1808" y2="1808" x1="816" />
        </branch>
        <instance x="976" y="1984" name="XLXI_9" orien="R0" />
        <branch name="LOAD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1952" type="branch" />
            <wire x2="976" y1="1952" y2="1952" x1="848" />
        </branch>
        <branch name="LED0">
            <wire x2="1232" y1="1952" y2="1952" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1952" name="LED0" orien="R0" />
        <branch name="JB4">
            <wire x2="1296" y1="1552" y2="1552" x1="1280" />
            <wire x2="1312" y1="1552" y2="1552" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1552" name="JB4" orien="R0" />
        <branch name="JB4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="720" type="branch" />
            <wire x2="896" y1="720" y2="720" x1="752" />
        </branch>
        <branch name="MTX_DAT(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1232" type="branch" />
            <wire x2="880" y1="1232" y2="1232" x1="736" />
        </branch>
        <branch name="STX_DAT(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1296" type="branch" />
            <wire x2="880" y1="1296" y2="1296" x1="736" />
        </branch>
        <branch name="MRX_DAT(14:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="976" type="branch" />
            <wire x2="1408" y1="976" y2="976" x1="1280" />
        </branch>
        <branch name="SRX_DAT(14:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1632" type="branch" />
            <wire x2="1408" y1="1632" y2="1632" x1="1280" />
        </branch>
        <branch name="SW(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1392" type="branch" />
            <wire x2="1584" y1="1392" y2="1392" x1="1456" />
        </branch>
        <branch name="MTX_DAT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1136" type="branch" />
            <wire x2="1584" y1="1136" y2="1136" x1="1456" />
        </branch>
        <branch name="SRX_DAT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1328" type="branch" />
            <wire x2="1584" y1="1328" y2="1328" x1="1456" />
        </branch>
        <branch name="STX_DAT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1264" type="branch" />
            <wire x2="1584" y1="1264" y2="1264" x1="1456" />
        </branch>
        <branch name="MRX_DAT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1200" type="branch" />
            <wire x2="1584" y1="1200" y2="1200" x1="1456" />
        </branch>
        <instance x="2096" y="1168" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_35(15:0)">
            <wire x2="2096" y1="1136" y2="1136" x1="1968" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="944" type="branch" />
            <wire x2="2096" y1="944" y2="944" x1="2048" />
        </branch>
        <branch name="seg_P">
            <wire x2="2512" y1="944" y2="944" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="944" name="seg_P" orien="R0" />
        <branch name="JC4">
            <wire x2="2512" y1="1008" y2="1008" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1008" name="JC4" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2512" y1="1072" y2="1072" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1072" name="AN(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="2512" y1="1136" y2="1136" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1136" name="seg(6:0)" orien="R0" />
        <branch name="SW(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="480" y="928" type="branch" />
            <wire x2="480" y1="928" y2="928" x1="368" />
            <wire x2="560" y1="928" y2="928" x1="480" />
        </branch>
        <iomarker fontsize="28" x="368" y="928" name="SW(2:0)" orien="R180" />
        <branch name="LED7">
            <wire x2="1216" y1="2064" y2="2064" x1="896" />
        </branch>
        <branch name="LED6">
            <wire x2="1216" y1="2144" y2="2144" x1="896" />
        </branch>
        <branch name="LED5">
            <wire x2="1216" y1="2224" y2="2224" x1="896" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2064" name="LED7" orien="R0" />
        <iomarker fontsize="28" x="1216" y="2144" name="LED6" orien="R0" />
        <iomarker fontsize="28" x="1216" y="2224" name="LED5" orien="R0" />
        <instance x="672" y="2096" name="XLXI_11" orien="R0" />
        <instance x="672" y="2176" name="XLXI_12" orien="R0" />
        <instance x="672" y="2256" name="XLXI_13" orien="R0" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2064" type="branch" />
            <wire x2="672" y1="2064" y2="2064" x1="608" />
        </branch>
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2144" type="branch" />
            <wire x2="672" y1="2144" y2="2144" x1="608" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="2224" type="branch" />
            <wire x2="672" y1="2224" y2="2224" x1="608" />
        </branch>
    </sheet>
</drawing>