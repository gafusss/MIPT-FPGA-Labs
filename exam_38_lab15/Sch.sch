<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_6(11:0)" />
        <signal name="F50MHz" />
        <signal name="JA9" />
        <signal name="JA10" />
        <signal name="JB1" />
        <signal name="JA7" />
        <signal name="XLXN_16" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="seg_P" />
        <signal name="SW(6:0)" />
        <signal name="XLXN_22(15:0)" />
        <signal name="BTN0" />
        <signal name="JA8" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="JA9" />
        <port polarity="Output" name="JA10" />
        <port polarity="Output" name="JB1" />
        <port polarity="Output" name="JA7" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Input" name="SW(6:0)" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Output" name="JA8" />
        <blockdef name="ACCM">
            <timestamp>2017-1-13T11:48:29</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2017-1-13T11:48:34</timestamp>
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
        <blockdef name="Gen_SIN">
            <timestamp>2017-1-13T14:7:53</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
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
        <blockdef name="SPI_DAC8512">
            <timestamp>2017-1-13T11:49:29</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="sw_to_dat">
            <timestamp>2017-1-13T12:17:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="ACCM" name="XLXI_1">
            <blockpin signalname="XLXN_16" name="clk" />
            <blockpin signalname="SW(6:0)" name="X(6:0)" />
            <blockpin signalname="XLXN_1" name="CO" />
            <blockpin name="Mx" />
            <blockpin name="ACC(15:0)" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_2">
            <blockpin signalname="XLXN_16" name="clk" />
            <blockpin signalname="XLXN_22(15:0)" name="dat(15:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="SPI_DAC8512" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="st" />
            <blockpin signalname="XLXN_16" name="clk" />
            <blockpin signalname="XLXN_6(11:0)" name="DI(11:0)" />
            <blockpin signalname="JA9" name="SDAT" />
            <blockpin signalname="JA10" name="SCLK" />
            <blockpin signalname="JB1" name="NCS" />
            <blockpin signalname="JA7" name="NLD" />
            <blockpin name="ce" />
            <blockpin name="cb_bit(3:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_6">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="sw_to_dat" name="XLXI_7">
            <blockpin signalname="SW(6:0)" name="SW(6:0)" />
            <blockpin signalname="XLXN_22(15:0)" name="dat(15:0)" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="BTN0" name="I" />
            <blockpin signalname="JA8" name="O" />
        </block>
        <block symbolname="Gen_SIN" name="XLXI_3">
            <blockpin signalname="XLXN_16" name="clk" />
            <blockpin signalname="XLXN_1" name="ce" />
            <blockpin name="S" />
            <blockpin name="X(4:0)" />
            <blockpin name="Y(11:0)" />
            <blockpin signalname="XLXN_6(11:0)" name="SIN(11:0)" />
            <blockpin name="SIN_L(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1360" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1456" y="1904" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1024" y1="928" y2="928" x1="928" />
            <wire x2="1216" y1="928" y2="928" x1="1024" />
            <wire x2="1024" y1="928" y2="1552" x1="1024" />
            <wire x2="1264" y1="1552" y2="1552" x1="1024" />
            <wire x2="1456" y1="1552" y2="1552" x1="1264" />
        </branch>
        <instance x="544" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_6(11:0)">
            <wire x2="1392" y1="1456" y2="1872" x1="1392" />
            <wire x2="1456" y1="1872" y2="1872" x1="1392" />
            <wire x2="1680" y1="1456" y2="1456" x1="1392" />
            <wire x2="1680" y1="992" y2="992" x1="1600" />
            <wire x2="1680" y1="992" y2="1456" x1="1680" />
        </branch>
        <instance x="272" y="960" name="XLXI_6" orien="R0" />
        <branch name="F50MHz">
            <wire x2="272" y1="928" y2="928" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="928" name="F50MHz" orien="R180" />
        <iomarker fontsize="28" x="256" y="1056" name="SW(6:0)" orien="R180" />
        <branch name="JA9">
            <wire x2="1872" y1="1552" y2="1552" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1552" name="JA9" orien="R0" />
        <branch name="JA10">
            <wire x2="1872" y1="1616" y2="1616" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1616" name="JA10" orien="R0" />
        <branch name="JB1">
            <wire x2="1872" y1="1680" y2="1680" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1680" name="JB1" orien="R0" />
        <branch name="JA7">
            <wire x2="1872" y1="1744" y2="1744" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1744" name="JA7" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="496" y1="800" y2="928" x1="496" />
            <wire x2="544" y1="928" y2="928" x1="496" />
            <wire x2="496" y1="928" y2="1552" x1="496" />
            <wire x2="880" y1="1552" y2="1552" x1="496" />
            <wire x2="496" y1="1552" y2="1712" x1="496" />
            <wire x2="1456" y1="1712" y2="1712" x1="496" />
            <wire x2="1136" y1="800" y2="800" x1="496" />
            <wire x2="1216" y1="800" y2="800" x1="1136" />
            <wire x2="1136" y1="800" y2="1136" x1="1136" />
            <wire x2="2160" y1="1136" y2="1136" x1="1136" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2576" y1="1264" y2="1264" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2576" y="1264" name="AN(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="2576" y1="1328" y2="1328" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2576" y="1328" name="seg(6:0)" orien="R0" />
        <branch name="seg_P">
            <wire x2="2576" y1="1136" y2="1136" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2576" y="1136" name="seg_P" orien="R0" />
        <branch name="SW(6:0)">
            <wire x2="320" y1="1056" y2="1056" x1="256" />
            <wire x2="544" y1="1056" y2="1056" x1="320" />
            <wire x2="320" y1="1056" y2="1328" x1="320" />
            <wire x2="1040" y1="1328" y2="1328" x1="320" />
        </branch>
        <instance x="1040" y="1360" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_22(15:0)">
            <wire x2="2160" y1="1328" y2="1328" x1="1424" />
        </branch>
        <instance x="1552" y="2032" name="XLXI_8" orien="R0" />
        <branch name="BTN0">
            <wire x2="1552" y1="2000" y2="2000" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2000" name="BTN0" orien="R180" />
        <branch name="JA8">
            <wire x2="1808" y1="2000" y2="2000" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="2000" name="JA8" orien="R0" />
        <instance x="1216" y="1088" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>