<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X(11:0)" />
        <signal name="XLXN_3(11:0)" />
        <signal name="XLXN_4(11:0)" />
        <signal name="XLXN_5(11:0)" />
        <signal name="XLXN_6(11:0)" />
        <signal name="Y(11:0)" />
        <signal name="XLXN_12(11:0)" />
        <signal name="st" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="clk" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="F50MHz" />
        <signal name="JB4" />
        <signal name="JD4" />
        <signal name="SW(7:0)" />
        <signal name="JA9" />
        <signal name="JA10" />
        <signal name="JB1" />
        <signal name="JA7" />
        <signal name="JC9" />
        <signal name="JC8" />
        <signal name="JC10" />
        <signal name="BTN0" />
        <signal name="JA8" />
        <signal name="LED(7:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="JD4" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="JA9" />
        <port polarity="Output" name="JA10" />
        <port polarity="Output" name="JB1" />
        <port polarity="Output" name="JA7" />
        <port polarity="Output" name="JC9" />
        <port polarity="Output" name="JC8" />
        <port polarity="Output" name="JC10" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Output" name="JA8" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="Gen_st">
            <timestamp>2016-11-24T8:4:57</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Gen_XY">
            <timestamp>2016-11-24T8:14:21</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="SPI_DAC8512">
            <timestamp>2016-11-24T8:13:36</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="SPI_DAC8043">
            <timestamp>2016-11-24T8:12:35</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
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
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <block symbolname="Gen_st" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="st" name="st" />
        </block>
        <block symbolname="Gen_XY" name="XLXI_2">
            <blockpin signalname="st" name="st" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="JD4" name="UP" />
            <blockpin name="Q(11:0)" />
            <blockpin signalname="X(11:0)" name="X(11:0)" />
            <blockpin signalname="Y(11:0)" name="Y(11:0)" />
        </block>
        <block symbolname="SPI_DAC8512" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="JA9" name="SDAT" />
            <blockpin signalname="JA10" name="SCLK" />
            <blockpin signalname="JB1" name="NCS" />
            <blockpin signalname="JA7" name="NLD" />
            <blockpin name="ce" />
            <blockpin name="cb_bit(3:0)" />
            <blockpin signalname="X(11:0)" name="DI(11:0)" />
            <blockpin signalname="st" name="st" />
        </block>
        <block symbolname="SPI_DAC8043" name="XLXI_4">
            <blockpin signalname="JC9" name="SDAT" />
            <blockpin signalname="JC8" name="SCLK" />
            <blockpin signalname="JC10" name="NLD" />
            <blockpin name="ce" />
            <blockpin name="cb_bit(3:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="st" name="st" />
            <blockpin signalname="Y(11:0)" name="DI(11:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_5">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="st" name="I" />
            <blockpin signalname="JB4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="BTN0" name="I" />
            <blockpin signalname="JA8" name="O" />
        </block>
        <block symbolname="obuf8" name="XLXI_8">
            <blockpin signalname="SW(7:0)" name="I(7:0)" />
            <blockpin signalname="LED(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="256" name="XLXI_1" orien="R0">
        </instance>
        <branch name="X(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="672" type="branch" />
            <wire x2="1456" y1="752" y2="880" x1="1456" />
            <wire x2="1520" y1="880" y2="880" x1="1456" />
            <wire x2="1968" y1="752" y2="752" x1="1456" />
            <wire x2="1936" y1="672" y2="672" x1="1904" />
            <wire x2="1968" y1="672" y2="672" x1="1936" />
            <wire x2="1968" y1="672" y2="752" x1="1968" />
        </branch>
        <instance x="1520" y="1232" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Y(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="608" type="branch" />
            <wire x2="1456" y1="1280" y2="1440" x1="1456" />
            <wire x2="1520" y1="1440" y2="1440" x1="1456" />
            <wire x2="2016" y1="1280" y2="1280" x1="1456" />
            <wire x2="1984" y1="608" y2="608" x1="1904" />
            <wire x2="2016" y1="608" y2="608" x1="1984" />
            <wire x2="2016" y1="608" y2="1280" x1="2016" />
        </branch>
        <instance x="1520" y="1728" name="XLXI_4" orien="R0">
        </instance>
        <branch name="st">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="224" type="branch" />
            <wire x2="1408" y1="336" y2="480" x1="1408" />
            <wire x2="1520" y1="480" y2="480" x1="1408" />
            <wire x2="1408" y1="480" y2="1200" x1="1408" />
            <wire x2="1520" y1="1200" y2="1200" x1="1408" />
            <wire x2="1408" y1="1200" y2="1568" x1="1408" />
            <wire x2="1520" y1="1568" y2="1568" x1="1408" />
            <wire x2="1968" y1="336" y2="336" x1="1408" />
            <wire x2="1968" y1="224" y2="224" x1="1904" />
            <wire x2="1968" y1="224" y2="336" x1="1968" />
            <wire x2="2032" y1="224" y2="224" x1="1968" />
        </branch>
        <instance x="1520" y="704" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2032" y="256" name="XLXI_6" orien="R0" />
        <instance x="1072" y="256" name="XLXI_5" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="224" type="branch" />
            <wire x2="1360" y1="224" y2="224" x1="1296" />
            <wire x2="1520" y1="224" y2="224" x1="1360" />
            <wire x2="1360" y1="224" y2="576" x1="1360" />
            <wire x2="1520" y1="576" y2="576" x1="1360" />
            <wire x2="1360" y1="576" y2="1040" x1="1360" />
            <wire x2="1520" y1="1040" y2="1040" x1="1360" />
            <wire x2="1360" y1="1040" y2="1696" x1="1360" />
            <wire x2="1520" y1="1696" y2="1696" x1="1360" />
        </branch>
        <branch name="F50MHz">
            <wire x2="1072" y1="224" y2="224" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="224" name="F50MHz" orien="R180" />
        <branch name="JB4">
            <wire x2="2288" y1="224" y2="224" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2288" y="224" name="JB4" orien="R0" />
        <branch name="JD4">
            <wire x2="2288" y1="480" y2="480" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2288" y="480" name="JD4" orien="R0" />
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="672" type="branch" />
            <wire x2="1136" y1="672" y2="672" x1="1040" />
            <wire x2="1520" y1="672" y2="672" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1040" y="672" name="SW(7:0)" orien="R180" />
        <branch name="JA9">
            <wire x2="2288" y1="880" y2="880" x1="1904" />
        </branch>
        <branch name="JA10">
            <wire x2="2288" y1="944" y2="944" x1="1904" />
        </branch>
        <branch name="JB1">
            <wire x2="2288" y1="1008" y2="1008" x1="1904" />
        </branch>
        <branch name="JA7">
            <wire x2="2288" y1="1072" y2="1072" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2288" y="880" name="JA9" orien="R0" />
        <iomarker fontsize="28" x="2288" y="944" name="JA10" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1008" name="JB1" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1072" name="JA7" orien="R0" />
        <branch name="JC9">
            <wire x2="2288" y1="1440" y2="1440" x1="1904" />
        </branch>
        <branch name="JC8">
            <wire x2="2288" y1="1504" y2="1504" x1="1904" />
        </branch>
        <branch name="JC10">
            <wire x2="2288" y1="1568" y2="1568" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2288" y="1504" name="JC8" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1440" name="JC9" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1568" name="JC10" orien="R0" />
        <instance x="1600" y="1888" name="XLXI_7" orien="R0" />
        <instance x="1600" y="2032" name="XLXI_8" orien="R0" />
        <branch name="BTN0">
            <wire x2="1600" y1="1856" y2="1856" x1="1568" />
        </branch>
        <branch name="JA8">
            <wire x2="1856" y1="1856" y2="1856" x1="1824" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="1856" y1="2000" y2="2000" x1="1824" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2000" type="branch" />
            <wire x2="1440" y1="2000" y2="2000" x1="1376" />
            <wire x2="1600" y1="2000" y2="2000" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1856" name="BTN0" orien="R180" />
        <iomarker fontsize="28" x="1856" y="1856" name="JA8" orien="R0" />
        <iomarker fontsize="28" x="1856" y="2000" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>